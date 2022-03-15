import 'package:flutter/material.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? titleColor;
  final List<Widget>? actions;
  final Color? appBarBackgroundColor;
  final bool centerTitle;

  const BaseAppBar({
    Key? key,
    this.title,
    this.titleColor,
    this.actions,
    this.appBarBackgroundColor,
    this.centerTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        title ?? '',
        fontFamily: 'Itau Display',
        color: titleColor ?? white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: appBarBackgroundColor,
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
