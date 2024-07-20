import 'package:urunan/engine/engine.dart';

abstract class ActivityDAO {
  const ActivityDAO();

  String getGeneratedId();
  Future<void> create({
    required ActivityPreview activity,
  });
  Future<List<ActivityPreview>> getLast20Activity();
  Future<ActivityPreview> getActivityById({
    required String activityId,
  });
  Future<void> delete({
    required String id,
  });
}
