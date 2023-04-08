import 'package:flutter/material.dart';
import 'package:bases_web/routes/routes_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoutesApp',
      initialRoute: '/stateful',
      onGenerateRoute: RoutesGenerator.generateRoute
    );
  }
}