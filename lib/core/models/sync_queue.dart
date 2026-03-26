import 'package:hive/hive.dart';

part 'sync_queue.g.dart';

enum SyncAction { insert, update, delete }

@HiveType(typeId: 3)
class SyncQueueItem extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String table; // 'students' | 'assessments'

  @HiveField(2)
  String action; // 'insert' | 'update' | 'delete'

  @HiveField(3)
  Map<String, dynamic> payload;

  @HiveField(4)
  DateTime createdAt;

  SyncQueueItem({
    required this.id,
    required this.table,
    required this.action,
    required this.payload,
    required this.createdAt,
  });
}