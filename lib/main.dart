import 'package:flutter/material.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/routes/routes_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoutesApp',
      initialRoute: '/stateful',
      onGenerateRoute: RoutesGenerator.generateRoute,
      builder: (_, child) => MainLayoutPage(child: child ?? Container())
    );
  }
}