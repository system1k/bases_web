import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';

import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/routes/routes_generator.dart';
import 'package:bases_web/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoutesApp',
      initialRoute: '/stateful',
      onGenerateRoute: RoutesGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) => MainLayoutPage(child: child ?? Container())
    );
  }
}