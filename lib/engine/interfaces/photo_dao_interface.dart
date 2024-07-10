import 'package:urunan/engine/engine.dart';

abstract class PhotoDAO {
  const PhotoDAO();

  String getGeneratedId();
  Future<void> create({required Photo photo});
  Future<Photo> getPhoto({required String photoId});
  Future<List<Photo>> getPhotosByAlbumId({required String albumId});
  Future<void> delete({required String id});
}
