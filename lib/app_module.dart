import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_poc/data/repositories/http/http_client_repository_impl.dart';
import 'package:flutter_web_poc/data/repositories/photos/photos_repository_impl.dart';
import 'package:flutter_web_poc/data/repositories/user/get_all_users_repository_impl.dart';
import 'package:flutter_web_poc/domain/repositories/http/http_client_repository.dart';
import 'package:flutter_web_poc/domain/repositories/photos/photos_repository.dart';
import 'package:flutter_web_poc/domain/repositories/user/get_all_users_repository.dart';
import 'package:flutter_web_poc/domain/usecases/get_all_users_usecase.dart';
import 'package:flutter_web_poc/domain/usecases/get_photos_usecase.dart';
import 'package:flutter_web_poc/presentation/controllers/users/users_controller.dart';
import 'package:flutter_web_poc/presentation/ui/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<HttpClientRepository>((i) => HttpClientRepositoryImpl()),
        Bind.singleton<GetAllUsersRepository>(
            (i) => GetAllUsersRepositoryImpl(i())),
        Bind.singleton<PhotosRepository>((i) => PhotoRepositoryImpl(i())),
        Bind.singleton<GetAllUsersUsecase>((i) => GetAllUsersUsecase(i())),
        Bind.singleton<GetPhotosUsecase>((i) => GetPhotosUsecase(i())),
        Bind.singleton((i) => UsersController(i(), i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
      ];
}
