import 'package:flutter/material.dart';
import 'package:bases_web/ui/pages/counter_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoutesApp',
      initialRoute: '/stateful',
      routes: {
        '/stateful' : (_) => const CounterPage()
      }
    );
  }
}