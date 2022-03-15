import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/domain/repositories/user/get_all_users_repository.dart';

class GetAllUsersUsecase {
  final GetAllUsersRepository _getAllUsersRepository;

  GetAllUsersUsecase(this._getAllUsersRepository);

  Future<List<UserEntity>> call() async {
    return _getAllUsersRepository();
  }
}
