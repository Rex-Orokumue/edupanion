import 'package:hive_flutter/hive_flutter.dart';

/// Manages session timeout and remember-me credentials.
/// Used by both auth_screen.dart and splash_screen.dart.
///
/// Keys stored in the 'app_session' Hive box:
///   'session_last_active' — Unix-ms timestamp of last foreground activity
///   'remember_me'         — bool, whether the teacher ticked "Remember me"
///   'saved_email'         — only written when remember_me == true
///   'saved_password'      — only written when remember_me == true
class SessionStore {
  static const _boxName       = 'app_session';
  static const _keyLastActive = 'session_last_active';
  static const _keyRememberMe = 'remember_me';
  static const _keyEmail      = 'saved_email';
  static const _keyPassword   = 'saved_password';

  /// Re-login required after this many minutes in background
  /// (ignored when remember_me is true).
  static const int sessionTimeoutMinutes = 30;

  static Box? _box;
  static Future<Box> _open() async =>
      _box ??= await Hive.openBox(_boxName);

  // ── Session validity ───────────────────────────────────────────────────────

  /// Returns true if the session is still within the timeout window,
  /// or if remember-me is enabled (no timeout applies).
  static Future<bool> isSessionValid() async {
    final box = await _open();
    final rememberMe = box.get(_keyRememberMe, defaultValue: false) as bool;
    if (rememberMe) return true;
    final last = box.get(_keyLastActive) as int?;
    if (last == null) return false;
    final elapsed = DateTime.now().millisecondsSinceEpoch - last;
    return elapsed < sessionTimeoutMinutes * 60 * 1000;
  }

  /// Refreshes the last-active timestamp. Call on app resume / HomeShell init.
  static Future<void> touch() async {
    final box = await _open();
    await box.put(_keyLastActive, DateTime.now().millisecondsSinceEpoch);
  }

  // ── Credentials ────────────────────────────────────────────────────────────

  /// Saves credentials if remember-me is ticked, clears them otherwise.
  static Future<void> saveCredentials({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    final box = await _open();
    await box.put(_keyRememberMe, rememberMe);
    if (rememberMe) {
      await box.put(_keyEmail, email);
      await box.put(_keyPassword, password);
    } else {
      await box.delete(_keyEmail);
      await box.delete(_keyPassword);
    }
  }

  /// Loads previously saved credentials.
  static Future<({String email, String password, bool rememberMe})>
      loadCredentials() async {
    final box = await _open();
    return (
      email:      (box.get(_keyEmail,      defaultValue: '') as String),
      password:   (box.get(_keyPassword,   defaultValue: '') as String),
      rememberMe: (box.get(_keyRememberMe, defaultValue: false) as bool),
    );
  }

  // ── Logout ─────────────────────────────────────────────────────────────────

  /// Wipes all session data. Call this on logout.
  static Future<void> clearSession() async {
    final box = await _open();
    await box.clear();
  }
}