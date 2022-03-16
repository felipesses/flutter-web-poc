import 'package:flutter/material.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';

class AppTile extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final Widget? subtitle;
  final void Function()? onTap;

  const AppTile({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: subtitle,
        ),
        Divider(
          color: black,
        ),
      ],
    );
  }
}
