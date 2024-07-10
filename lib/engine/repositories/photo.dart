import 'package:urunan/engine/engine.dart';

class PhotoRepository implements PhotoDAO {
  const PhotoRepository({
    required PhotoDAO dao,
  }) : _dao = dao;

  final PhotoDAO _dao;

  @override
  String getGeneratedId() => _dao.getGeneratedId();

  @override
  Future<Photo> getPhoto({required String photoId}) async {
    return _dao.getPhoto(photoId: photoId);
  }

  @override
  Future<List<Photo>> getPhotosByAlbumId({required String albumId}) async {
    return _dao.getPhotosByAlbumId(albumId: albumId);
  }

  @override
  Future<void> create({required Photo photo}) {
    return _dao.create(photo: photo);
  }

  @override
  Future<void> delete({required String id}) {
    return _dao.delete(id: id);
  }
}
