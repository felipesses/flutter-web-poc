import 'package:flutter_web_poc/domain/entities/user_entity.dart';

abstract class GetAllUsersRepository {
  Future<List<UserEntity>> call();
}
