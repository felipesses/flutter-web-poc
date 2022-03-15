import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/domain/repositories/http/http_client_repository.dart';
import 'package:flutter_web_poc/domain/repositories/user/get_all_users_repository.dart';

const url = 'https://jsonplaceholder.typicode.com/users';

class GetAllUsersRepositoryImpl implements GetAllUsersRepository {
  final HttpClientRepository clientRepository;

  GetAllUsersRepositoryImpl(this.clientRepository);

  @override
  Future<List<UserEntity>> call() async {
    final response = await clientRepository.get(url);
    return (response as List).map(UserEntity.fromJson).toList();
  }
}
