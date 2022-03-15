import 'package:flutter/material.dart';
import 'package:flutter_web_poc/domain/entities/user_entity.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';
import 'package:flutter_web_poc/presentation/widgets/molecules/user_card/user_card.dart';
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
        child: UserCard(userEntity: widget.userEntity),
      ),
    );
  }
}
