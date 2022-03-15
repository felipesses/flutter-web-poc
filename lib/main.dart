import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_poc/app_module.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setObservers(
      [seoRouteObserver],
    ); // replacement for navigatorObservers
    return RobotDetector(
      debug: true,
      child: MaterialApp.router(
        title: 'Flutter Web Poc',
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
