import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/repositories/http/http_client_repository.dart';
import 'package:flutter_web_poc/domain/repositories/photos/photos_repository.dart';

const url = 'https://jsonplaceholder.typicode.com/albums/1/photos';

class PhotoRepositoryImpl implements PhotosRepository {
  final HttpClientRepository clientRepository;

  PhotoRepositoryImpl(this.clientRepository);

  @override
  Future<List<PhotoEntity>> call() async {
    final response = await clientRepository.get(url);
    return (response as List).map(PhotoEntity.fromJson).toList();
  }
}
