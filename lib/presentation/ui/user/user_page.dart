import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';
import 'package:flutter_web_poc/presentation/widgets/molecules/card/app_card.dart';
import 'package:flutter_web_poc/presentation/widgets/templates/layout/layout.dart';

class UserPage extends StatefulWidget {
  final UserEntity userEntity;
  const UserPage({
    Key? key,
    required this.userEntity,
  }) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      appBarTitle: 'User Page',
      appBarBackgroundColor: primary,
      centerTitle: false,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: AppCard(
          content: SizedBox(
            width: double.infinity,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  '#${widget.userEntity.id}',
                  fontFamily: 'Itau Display',
                  fontSize: 20,
                ),
                AppText(
                  'Name: ${widget.userEntity.name}',
                  fontFamily: 'Itau Text',
                  fontSize: 18,
                ),
                AppText(
                  'Phone: ${widget.userEntity.phone}',
                  fontFamily: 'Itau Text',
                  fontSize: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
