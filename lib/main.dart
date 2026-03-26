import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'core/models/student.dart';
import 'core/models/assessment.dart';
import 'core/models/sync_queue.dart';
import 'core/models/term.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/offline_sync_service.dart';
import 'core/theme/app_theme.dart';
import 'modules/auth/screens/auth_screen.dart';
export 'main.dart' show appNavigatorKey;

// Global navigator key — lets us navigate from anywhere (e.g. auth listener)
// without needing a BuildContext.
final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://brodyivxdgtjuhzqbhpa.supabase.co',
    anonKey: 'sb_publishable_LLlxkVzriGP0eLtn2T2ImA_FHqzTp_D',
  );

  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  Hive.registerAdapter(AssessmentAdapter());
  Hive.registerAdapter(SyncQueueItemAdapter());
  Hive.registerAdapter(TermAdapter());

  // Open Hive boxes — if a box has a stale schema (old adapter fields)
  // we delete it and reopen empty. Data re-syncs from Supabase on next load.
  await _safeOpenBox<Student>('students');
  await _safeOpenBox<Assessment>('assessments');
  await _safeOpenBox<SyncQueueItem>('sync_queue');
  await _safeOpenBox<Term>('terms');
  // Initialize connectivity monitor and offline sync
  await ConnectivityService().initialize();
  await OfflineSyncService().initialize();

  runApp(const EduPanionApp());
}

/// Opens a Hive box safely. If the stored data is incompatible with the
/// current adapter (e.g. after adding new fields), we manually delete the
/// .hive and .lock files and reopen fresh. Data re-syncs from Supabase.
Future<Box<T>> _safeOpenBox<T>(String name) async {
  try {
    return await Hive.openBox<T>(name);
  } catch (_) {
    // Manually delete the box files — deleteBoxFromDisk requires the box
    // to have been opened successfully, which it wasn't.
    try {
      final dir = await getApplicationDocumentsDirectory();
      final hiveFile = File('${dir.path}/$name.hive');
      final lockFile = File('${dir.path}/$name.lock');
      if (await hiveFile.exists()) await hiveFile.delete();
      if (await lockFile.exists()) await lockFile.delete();
    } catch (_) {
      // If delete also fails, we can't recover — ignore and try open anyway
    }
    return await Hive.openBox<T>(name);
  }
}

class EduPanionApp extends StatefulWidget {
  const EduPanionApp({super.key});

  @override
  State<EduPanionApp> createState() => _EduPanionAppState();
}

class _EduPanionAppState extends State<EduPanionApp> {
  late final Stream<AuthState> _authStream;

  @override
  void initState() {
    super.initState();
    _authStream = Supabase.instance.client.auth.onAuthStateChange;
    _authStream.listen((data) {
      if (data.event == AuthChangeEvent.signedOut) {
        // Clear the entire navigator stack and go back to login.
        appNavigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const AuthScreen()),
          (route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduPanion',
      theme: AppTheme.theme,
      navigatorKey: appNavigatorKey,
      home: const SplashScreen(),
    );
  }
}