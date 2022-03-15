import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/photo_entity.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/ui/user/user_page.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/image/image.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';

class UserTile extends StatelessWidget {
  final UserEntity userEntity;
  final PhotoEntity photoEntity;
  const UserTile({
    Key? key,
    required this.userEntity,
    required this.photoEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return UserPage(userEntity: userEntity);
                },
              ),
            );
          },
          leading: CircleAvatar(
            child: ClipOval(
              child: AppNetworkImage(
                url: photoEntity.url,
              ),
            ),
          ),
          title: AppText(
            userEntity.name,
            fontFamily: 'Itau Display',
            fontSize: 20,
            color: black,
            fontWeight: FontWeight.bold,
          ),
          subtitle: AppText(
            userEntity.phone ?? 'No phone',
            fontFamily: 'Itau Text',
            fontSize: 16,
            color: black,
            fontWeight: FontWeight.normal,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: black,
          ),
        ),
        Divider(
          color: black,
        ),
      ],
    );
  }
}
