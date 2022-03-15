import 'package:flutter/material.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/colors/colors.dart';

class AppSpinner extends StatelessWidget {
  const AppSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(primary),
      ),
    );
  }
}
