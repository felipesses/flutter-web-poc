import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/domain/usecases/get_all_users_usecase.dart';
import 'package:flutter_web_poc/domain/usecases/get_photos_usecase.dart';

class UsersController extends ChangeNotifier {
  final GetAllUsersUsecase _getAllUsersUsecase;
  final GetPhotosUsecase _getPhotosUsecase;

  UsersController(
    this._getAllUsersUsecase,
    this._getPhotosUsecase,
  );

  List<UserEntity>? users;
  List<PhotoEntity>? photos;

  Future<void> fetchAllUsers() async {
    users = await _getAllUsersUsecase();
    notifyListeners();
  }

  Future<void> fetchAllPhotos() async {
    photos = await _getPhotosUsecase();
    notifyListeners();
  }
}
