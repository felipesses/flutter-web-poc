import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/widgets/molecules/user_tile/user_tile.dart';

class UsersList extends StatelessWidget {
  final List<UserEntity> usersList;
  final List<PhotoEntity> photosList;
  const UsersList({
    Key? key,
    required this.usersList,
    required this.photosList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: usersList.mapIndexed(
      (index, e) {
        final photo = photosList[index];
        return UserTile(
          userEntity: e,
          photoEntity: photo,
        );
      },
    ).toList());
  }
}
