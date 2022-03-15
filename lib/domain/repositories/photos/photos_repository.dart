import 'package:flutter_web_poc/domain/entities/photo_entity.dart';

abstract class PhotosRepository {
  Future<List<PhotoEntity>> call();
}
