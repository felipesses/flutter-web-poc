import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/ui/user/user_page.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/image/image.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';
import 'package:flutter_web_poc/presentation/widgets/molecules/tile/app_tile.dart';

import '../../atoms/colors/colors.dart';

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
        return AppTile(
          title: AppText(
            e.name,
            fontFamily: 'Itau Display',
            fontSize: 20,
            color: black,
            fontWeight: FontWeight.bold,
          ),
          subtitle: AppText(
            e.phone ?? 'No phone',
            fontFamily: 'Itau Text',
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.normal,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: black,
          ),
          leading: CircleAvatar(
            child: ClipOval(
              child: AppNetworkImage(
                url: photo.url,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return UserPage(userEntity: e);
                },
              ),
            );
          },
        );
      },
    ).toList());
  }
}
