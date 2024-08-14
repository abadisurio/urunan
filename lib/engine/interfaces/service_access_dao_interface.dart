import 'package:urunan/engine/engine.dart';

abstract class ServiceAccessDAO {
  const ServiceAccessDAO();

  Future<List<ServiceAccess>> getLast20ServiceAccess();

  Future<ServiceAccess> getServiceAccessById({
    required String accessId,
  });
}
