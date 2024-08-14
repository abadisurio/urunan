import 'package:urunan/engine/engine.dart';

class ServiceAccessRepository implements ServiceAccessDAO {
  const ServiceAccessRepository({
    required ServiceAccessDAO dio,
  }) : _dio = dio;

  final ServiceAccessDAO _dio;

  @override
  Future<List<ServiceAccess>> getLast20ServiceAccess() {
    return _dio.getLast20ServiceAccess();
  }

  @override
  Future<ServiceAccess> getServiceAccessById({required String accessId}) {
    return _dio.getServiceAccessById(accessId: accessId);
  }
}
