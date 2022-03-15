import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/repositories/photos/photos_repository.dart';

class GetPhotosUsecase {
  final PhotosRepository _photosRepository;

  GetPhotosUsecase(this._photosRepository);

  Future<List<PhotoEntity>> call() async {
    return _photosRepository();
  }
}
