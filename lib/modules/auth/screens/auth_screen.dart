import 'dart:async';
import 'package:flutter/material.dart';
import '../../terms/screens/terms_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../classrooms/screens/classroom_screen.dart';
import '../../../modules/dashboard/screens/dashboard_screen.dart';
import '../../../core/services/connectivity_service.dart';
import '../../../core/theme/app_theme.dart';

// ── Splash Screen ─────────────────────────────────────────────────────────────
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _scale = Tween<double>(begin: 0.7, end: 1.0).animate(
        CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut));
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    _ctrl.forward();
    _decide();
  }

  Future<void> _decide() async {
    await Future.delayed(const Duration(milliseconds: 1600));
    if (!mounted) return;

    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      // Check auto-logout: if last activity > 7 days ago, sign out
      final prefs = await SharedPreferences.getInstance();
      final lastActive = prefs.getInt('last_active_ms') ?? 0;
      final diff = DateTime.now().millisecondsSinceEpoch - lastActive;
      const sevenDays = 7 * 24 * 60 * 60 * 1000;
      if (lastActive > 0 && diff > sevenDays) {
        await Supabase.instance.client.auth.signOut();
        if (!mounted) return;
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const AuthScreen()));
        return;
      }
      // Update last active
      await prefs.setInt(
          'last_active_ms', DateTime.now().millisecondsSinceEpoch);
      if (!mounted) return;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeShell()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const AuthScreen()));
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.primaryGradient),
        child: Center(
          child: FadeTransition(
            opacity: _fade,
            child: ScaleTransition(
              scale: _scale,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: const Icon(Icons.menu_book_rounded,
                        size: 56, color: Colors.white),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'EduPanion',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Smart tools for smart teachers',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withValues(alpha: 0.75),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Auth Screen ───────────────────────────────────────────────────────────────
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  final _supabase = Supabase.instance.client;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _schoolNameController = TextEditingController();
  final _schoolCodeController = TextEditingController();

  bool _isLogin = true;
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _rememberMe = true;
  String? _errorMessage;
  String _schoolMode = 'create';

  late final AnimationController _animController;
  late final Animation<double> _fadeAnim;
  late final Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnim =
        CurvedAnimation(parent: _animController, curve: Curves.easeOut);
    _slideAnim = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: _animController, curve: Curves.easeOut));
    _animController.forward();
    _loadRememberMe();
  }

  Future<void> _loadRememberMe() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _rememberMe = prefs.getBool('remember_me') ?? true;
      if (_rememberMe) {
        _emailController.text = prefs.getString('saved_email') ?? '';
      }
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _schoolNameController.dispose();
    _schoolCodeController.dispose();
    super.dispose();
  }

  void _goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeShell()),
    );
  }

  Future<void> _submit() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final name = _nameController.text.trim();

    try {
      if (_isLogin) {
        final response = await _supabase.auth.signInWithPassword(
          email: email,
          password: password,
        );
        if (response.session != null) {
          // Save remember-me prefs
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('remember_me', _rememberMe);
          if (_rememberMe) {
            await prefs.setString('saved_email', email);
          } else {
            await prefs.remove('saved_email');
          }
          await prefs.setInt(
              'last_active_ms', DateTime.now().millisecondsSinceEpoch);
          _goHome();
        }
      } else {
        if (name.isEmpty) {
          setState(() {
            _errorMessage = 'Please enter your name.';
            _isLoading = false;
          });
          return;
        }
        if (_schoolMode == 'create' &&
            _schoolNameController.text.trim().isEmpty) {
          setState(() {
            _errorMessage = 'Please enter your school name.';
            _isLoading = false;
          });
          return;
        }
        if (_schoolMode == 'join' &&
            _schoolCodeController.text.trim().isEmpty) {
          setState(() {
            _errorMessage = 'Please enter your school code.';
            _isLoading = false;
          });
          return;
        }

        String? userId;
        try {
          final response =
              await _supabase.auth.signUp(email: email, password: password);
          userId = response.user?.id;
        } on AuthException catch (e) {
          if (e.message.toLowerCase().contains('already')) {
            final loginRes = await _supabase.auth.signInWithPassword(
              email: email,
              password: password,
            );
            userId = loginRes.user?.id;
          } else {
            rethrow;
          }
        }

        if (userId == null) {
          setState(() => _errorMessage = 'Registration failed. Try again.');
          return;
        }

        final existing = await _supabase
            .from('teachers')
            .select('id')
            .eq('id', userId)
            .maybeSingle();
        if (existing != null) {
          _goHome();
          return;
        }

        String? schoolId;
        try {
          if (_schoolMode == 'create') {
            final school = await _supabase
                .from('schools')
                .insert({'name': _schoolNameController.text.trim()})
                .select('id')
                .single();
            schoolId = school['id'] as String;
          } else {
            final code = _schoolCodeController.text.trim();
            final school = await _supabase
                .from('schools')
                .select('id')
                .eq('id', code)
                .maybeSingle();
            if (school == null) {
              await _supabase.auth.signOut();
              setState(() {
                _errorMessage =
                    'School not found. Check the code and try again.';
                _isLoading = false;
              });
              return;
            }
            schoolId = school['id'] as String;
          }

          await _supabase.from('teachers').insert({
            'id': userId,
            'name': name,
            'email': email,
            'school_id': schoolId,
          });
        } catch (insertError) {
          await _supabase.auth.signOut();
          setState(() {
            _errorMessage =
                'Account setup failed — database permissions error.\n\n'
                'Add this RLS policy in Supabase:\n'
                'Table: schools | Operation: INSERT | Role: authenticated\n'
                'WITH CHECK: true\n\n'
                'Error: \$insertError';
            _isLoading = false;
          });
          return;
        }

        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('remember_me', _rememberMe);
        if (_rememberMe) {
          await prefs.setString('saved_email', email);
        }
        await prefs.setInt(
            'last_active_ms', DateTime.now().millisecondsSinceEpoch);
        _goHome();
      }
    } on AuthException catch (e) {
      setState(() => _errorMessage = e.message);
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ── Hero Header ──────────────────────────────────────────────
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: AppTheme.primaryGradient,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(28, 48, 28, 48),
                  child: Column(
                    children: [
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.menu_book_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'EduPanion',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _isLogin
                            ? 'Welcome back, Teacher 👋'
                            : 'Join thousands of teachers',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.8),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ── Form ─────────────────────────────────────────────────────
            FadeTransition(
              opacity: _fadeAnim,
              child: SlideTransition(
                position: _slideAnim,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (!_isLogin) ...[
                        _buildField(
                          controller: _nameController,
                          label: 'Full Name',
                          icon: Icons.person_outline_rounded,
                        ),
                        const SizedBox(height: 14),
                        _buildSchoolToggle(),
                        const SizedBox(height: 14),
                        if (_schoolMode == 'create')
                          _buildField(
                            controller: _schoolNameController,
                            label: 'School Name',
                            icon: Icons.school_outlined,
                          )
                        else
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildField(
                                controller: _schoolCodeController,
                                label: 'School Code',
                                icon: Icons.vpn_key_outlined,
                                hint: 'Paste the school ID from your admin',
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Ask your school admin for the School Code.',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        const SizedBox(height: 14),
                      ],

                      _buildField(
                        controller: _emailController,
                        label: 'Email Address',
                        icon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 14),
                      _buildField(
                        controller: _passwordController,
                        label: 'Password',
                        icon: Icons.lock_outline_rounded,
                        obscure: _obscurePassword,
                        suffix: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: AppTheme.textSecondary,
                            size: 20,
                          ),
                          onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword),
                        ),
                      ),

                      // ── Remember Me ────────────────────────────────────
                      if (_isLogin) ...[
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Checkbox(
                                value: _rememberMe,
                                onChanged: (v) =>
                                    setState(() => _rememberMe = v ?? true),
                                activeColor: AppTheme.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () =>
                                  setState(() => _rememberMe = !_rememberMe),
                              child: const Text(
                                'Remember me',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: AppTheme.textSecondary),
                              ),
                            ),
                          ],
                        ),
                      ],

                      if (_errorMessage != null) ...[
                        const SizedBox(height: 14),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color:
                                AppTheme.danger.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppTheme.danger
                                    .withValues(alpha: 0.2)),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.error_outline,
                                  color: AppTheme.danger, size: 16),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  _errorMessage!,
                                  style: const TextStyle(
                                      color: AppTheme.danger, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      const SizedBox(height: 24),

                      // Submit button
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [AppTheme.primaryDark, AppTheme.primary],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  AppTheme.primary.withValues(alpha: 0.35),
                              blurRadius: 16,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: _isLoading ? null : _submit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding:
                                const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                          ),
                          child: _isLoading
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white),
                                )
                              : Text(
                                  _isLogin ? 'Login' : 'Create Account',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Center(
                        child: TextButton(
                          onPressed: () => setState(() {
                            _isLogin = !_isLogin;
                            _errorMessage = null;
                            _animController.forward(from: 0);
                          }),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(fontSize: 14),
                              children: [
                                TextSpan(
                                  text: _isLogin
                                      ? "Don't have an account? "
                                      : 'Already have an account? ',
                                  style: const TextStyle(
                                      color: AppTheme.textSecondary),
                                ),
                                TextSpan(
                                  text: _isLogin ? 'Register' : 'Login',
                                  style: const TextStyle(
                                    color: AppTheme.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType? keyboardType,
    bool obscure = false,
    Widget? suffix,
    String? hint,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure,
      style: const TextStyle(fontSize: 15, color: AppTheme.textPrimary),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon, color: AppTheme.textSecondary, size: 20),
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppTheme.primary, width: 2),
        ),
      ),
    );
  }

  Widget _buildSchoolToggle() {
    return Row(
      children: [
        Expanded(
            child: _SchoolModeButton(
          label: 'Create School',
          icon: Icons.add_business_outlined,
          selected: _schoolMode == 'create',
          onTap: () => setState(() => _schoolMode = 'create'),
        )),
        const SizedBox(width: 10),
        Expanded(
            child: _SchoolModeButton(
          label: 'Join School',
          icon: Icons.group_add_outlined,
          selected: _schoolMode == 'join',
          onTap: () => setState(() => _schoolMode = 'join'),
        )),
      ],
    );
  }
}

class _SchoolModeButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _SchoolModeButton({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? AppTheme.primary : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? AppTheme.primary : Colors.grey.shade200,
          ),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: AppTheme.primary.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  )
                ]
              : [],
        ),
        child: Column(
          children: [
            Icon(icon,
                color:
                    selected ? Colors.white : AppTheme.textSecondary,
                size: 20),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: selected ? Colors.white : AppTheme.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Home Shell ────────────────────────────────────────────────────────────────
class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _currentIndex = 0;
  bool _isOnline = true;

  // Auto-logout timer — resets on every user interaction
  static const _inactivityTimeout = Duration(days: 7);
  Timer? _inactivityTimer;

  final List<GlobalKey<NavigatorState>> _navKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  final List<Widget> _roots = const [
    DashboardScreen(),
    ClassroomScreen(),
    TermsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _isOnline = ConnectivityService().isOnline;
    ConnectivityService().onConnectivityChanged.listen((isOnline) {
      if (mounted) setState(() => _isOnline = isOnline);
    });
    _resetInactivityTimer();
    _updateLastActive();
  }

  @override
  void dispose() {
    _inactivityTimer?.cancel();
    super.dispose();
  }

  void _resetInactivityTimer() {
    _inactivityTimer?.cancel();
    _inactivityTimer = Timer(_inactivityTimeout, _autoLogout);
  }

  Future<void> _updateLastActive() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(
        'last_active_ms', DateTime.now().millisecondsSinceEpoch);
  }

  Future<void> _autoLogout() async {
    await Supabase.instance.client.auth.signOut();
    // The auth state listener in main.dart will navigate to AuthScreen
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      // Reset timer on any touch anywhere in the app
      onPointerDown: (_) {
        _resetInactivityTimer();
        _updateLastActive();
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (didPop) return;
          final nav = _navKeys[_currentIndex].currentState;
          if (nav != null && nav.canPop()) nav.pop();
        },
        child: Scaffold(
          body: Column(
            children: [
              // ── Offline banner ─────────────────────────────────────────
              if (!_isOnline)
                Material(
                  color: const Color(0xFFFF9F1C),
                  child: SafeArea(
                    bottom: false,
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(Icons.wifi_off_rounded,
                                  color: Colors.white, size: 14),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Offline — changes will sync when reconnected',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              Expanded(
                child: IndexedStack(
                  index: _currentIndex,
                  children: List.generate(_roots.length, (i) {
                    return Navigator(
                      key: _navKeys[i],
                      onGenerateRoute: (_) => MaterialPageRoute(
                        builder: (_) => _roots[i],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),

          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 16,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: NavigationBar(
              selectedIndex: _currentIndex,
              backgroundColor: Colors.white,
              elevation: 0,
              onDestinationSelected: (index) {
                if (index == _currentIndex) {
                  _navKeys[index]
                      .currentState
                      ?.popUntil((r) => r.isFirst);
                } else {
                  setState(() => _currentIndex = index);
                }
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.dashboard_outlined),
                  selectedIcon: Icon(Icons.dashboard_rounded),
                  label: 'Dashboard',
                ),
                NavigationDestination(
                  icon: Icon(Icons.class_outlined),
                  selectedIcon: Icon(Icons.class_rounded),
                  label: 'Classrooms',
                ),
                NavigationDestination(
                  icon: Icon(Icons.calendar_month_outlined),
                  selectedIcon: Icon(Icons.calendar_month_rounded),
                  label: 'Terms',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}