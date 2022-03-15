import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';

class UserCard extends StatelessWidget {
  final UserEntity userEntity;
  const UserCard({
    Key? key,
    required this.userEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: white,
      child: Padding(
        padding: const EdgeInsets.all(
          8,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                '#${userEntity.id}',
                fontFamily: 'Itau Display',
                fontSize: 20,
              ),
              AppText(
                'Name: ${userEntity.name}',
                fontFamily: 'Itau Text',
                fontSize: 18,
              ),
              AppText(
                'Phone: ${userEntity.phone}',
                fontFamily: 'Itau Text',
                fontSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
