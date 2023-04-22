import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';

import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/routes/routes.dart';
import 'package:bases_web/services/navigation_service.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoutesApp',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) => MainLayoutPage(child: child ?? Container()),
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      )
    );
  }
}