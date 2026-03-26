import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  static final ConnectivityService _instance = ConnectivityService._internal();
  factory ConnectivityService() => _instance;
  ConnectivityService._internal();

  final Connectivity _connectivity = Connectivity();
  final StreamController<bool> _onlineController =
  StreamController<bool>.broadcast();

  bool _isOnline = true;
  bool get isOnline => _isOnline;

  Stream<bool> get onConnectivityChanged => _onlineController.stream;

  /// Call once in main() to start monitoring
  Future<void> initialize() async {
    // Check current status
    final result = await _connectivity.checkConnectivity();
    _isOnline = _isConnected(result);

    // Listen for changes
    _connectivity.onConnectivityChanged.listen((result) {
      final wasOnline = _isOnline;
      _isOnline = _isConnected(result);

      if (_isOnline != wasOnline) {
        _onlineController.add(_isOnline);
      }
    });
  }

  bool _isConnected(List<ConnectivityResult> result) {
    return result.any((r) =>
    r == ConnectivityResult.mobile ||
        r == ConnectivityResult.wifi ||
        r == ConnectivityResult.ethernet);
  }

  void dispose() {
    _onlineController.close();
  }
}