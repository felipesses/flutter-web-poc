import 'package:flutter/material.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';

class AppCard extends StatelessWidget {
  final Widget content;
  final Color? backgroundColor;
  const AppCard({
    Key? key,
    required this.content,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: backgroundColor ?? white,
      child: Padding(
        padding: const EdgeInsets.all(
          8,
        ),
        child: content,
      ),
    );
  }
}
