import 'package:urunan/engine/engine.dart';

class ServiceAccessDio extends ServiceAccessDAO {
  const ServiceAccessDio();

  @override
  Future<List<ServiceAccess>> getLast20ServiceAccess() async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    return _accesses;
  }

  @override
  Future<ServiceAccess> getServiceAccessById({required String accessId}) async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    return _accesses.first;
  }
}

final _accesses = [
  ServiceAccess(
    id: 'id',
    createdAt: DateTime.now(),
    service: ServiceSubscription(
      id: 'id',
      createdAt: DateTime.now(),
      provider: ServiceSubscriptionProvider.netflix,
      name: 'Netflix Premium 4K',
    ),
    email: 'email',
    password: 'password',
  ),
  ServiceAccess(
    id: 'id2',
    createdAt: DateTime.now(),
    service: ServiceSubscription(
      id: 'id2',
      createdAt: DateTime.now(),
      provider: ServiceSubscriptionProvider.youtube,
      name: 'YouTube Music Family',
    ),
    email: 'email',
    password: 'password',
  ),
];
