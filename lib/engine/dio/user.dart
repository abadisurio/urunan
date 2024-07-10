import 'package:dio/dio.dart';
import 'package:urunan/engine/engine.dart';

class UserDio extends UserDAO {
  const UserDio({required Dio dio}) : _dio = dio;

  // ignore: unused_field
  final Dio _dio;

  @override
  Future<void> create({required Pilot user}) {
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Pilot> getDetail({required String id}) async {
    return Pilot(id: 'id', username: 'username', createdAt: DateTime.now());
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
