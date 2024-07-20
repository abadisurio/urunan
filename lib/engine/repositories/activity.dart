import 'package:urunan/engine/engine.dart';

class ActivityRepository implements ActivityDAO {
  const ActivityRepository({
    required ActivityDAO dao,
  }) : _dao = dao;

  final ActivityDAO _dao;

  @override
  String getGeneratedId() => _dao.getGeneratedId();

  @override
  Future<ActivityPreview> getActivityById({required String activityId}) async {
    return _dao.getActivityById(activityId: activityId);
  }

  @override
  Future<void> create({required ActivityPreview activity}) {
    return _dao.create(activity: activity);
  }

  @override
  Future<void> delete({required String id}) {
    return _dao.delete(id: id);
  }

  @override
  Future<List<ActivityPreview>> getLast20Activity() async {
    return _dao.getLast20Activity();
  }
}
