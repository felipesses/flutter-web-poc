import 'package:flutter/material.dart';
import 'package:flutter_web_poc/presentation/widgets/molecules/app_bar/app_bar.dart';

import 'layout_responsivity.dart';

class LayoutWidget extends StatelessWidget {
  final bool hasAppBar;
  final String? appBarTitle;
  final Color? appBarTitleColor;
  final List<Widget>? appBarActions;
  final bool centerTitle;
  final Color? appBarBackgroundColor;
  final Widget? child;

  final BoxConstraints _contentConstraints =
      const BoxConstraints(maxWidth: 600);

  const LayoutWidget(
      {this.appBarTitle,
      this.appBarTitleColor,
      this.appBarActions,
      this.centerTitle = true,
      this.child,
      this.appBarBackgroundColor,
      this.hasAppBar = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget? child = this.child;
    return LayoutResponsivity(
      mobile: Scaffold(
        appBar: hasAppBar
            ? BaseAppBar(
                title: appBarTitle,
                appBarBackgroundColor: appBarBackgroundColor,
                actions: appBarActions,
                centerTitle: centerTitle,
                titleColor: appBarTitleColor,
              )
            : null,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                constraints: _contentConstraints,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
