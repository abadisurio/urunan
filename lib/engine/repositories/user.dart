import 'package:urunan/engine/engine.dart';

class UserRepository implements UserDAO {
  const UserRepository({
    required UserDAO dao,
  }) : _dao = dao;

  final UserDAO _dao;

  Future<Pilot> getUser({required String id}) async {
    return _dao.getPreview(id: id);
  }

  @override
  Future<void> create({required Pilot user}) {
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Pilot> getDetail({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Pilot> getPreview({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Pilot> update({required Pilot user}) {
    throw UnimplementedError();
  }
}
