import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/sync_queue.dart';
import 'connectivity_service.dart';

class OfflineSyncService {
  static final OfflineSyncService _instance = OfflineSyncService._internal();
  factory OfflineSyncService() => _instance;
  OfflineSyncService._internal();

  final _supabase = Supabase.instance.client;
  final _connectivity = ConnectivityService();
  final _uuid = const Uuid();

  Box<SyncQueueItem>? _queueBox;

  /// Call once in main() after Hive is initialized
  Future<void> initialize() async {
    _queueBox = await Hive.openBox<SyncQueueItem>('sync_queue');

    // Flush queue whenever we come back online
    _connectivity.onConnectivityChanged.listen((isOnline) {
      if (isOnline) flushQueue();
    });

    // Try flushing on startup too
    if (_connectivity.isOnline) flushQueue();
  }

  /// Queue a write operation for later sync
  Future<void> enqueue({
    required String table,
    required String action,
    required Map<String, dynamic> payload,
  }) async {
    final item = SyncQueueItem(
      id: _uuid.v4(),
      table: table,
      action: action,
      payload: payload,
      createdAt: DateTime.now(),
    );
    await _queueBox?.put(item.id, item);
  }

  /// Flush all pending queue items to Supabase
  Future<void> flushQueue() async {
    final box = _queueBox;
    if (box == null || box.isEmpty) return;

    final items = box.values.toList()
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));

    for (final item in items) {
      try {
        switch (item.action) {
          case 'insert':
            await _supabase.from(item.table).upsert(item.payload);
            break;
          case 'update':
            await _supabase
                .from(item.table)
                .update(item.payload)
                .eq('id', item.payload['id']);
            break;
          case 'delete':
            await _supabase
                .from(item.table)
                .delete()
                .eq('id', item.payload['id']);
            break;
        }
        // Remove from queue on success
        await item.delete();
      } catch (_) {
        // Leave in queue — will retry next time we're online
        break;
      }
    }
  }

  int get pendingCount => _queueBox?.length ?? 0;
}