import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/pages/pages.dart';

class RoutesGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case '/stateful':
        return _pageRoute(const CounterPage(), '/stateful');

      case '/provider':
        return _pageRoute(const CounterProviderPage(), '/provider');

      default:
        return _pageRoute(const Page404(), '/404');

    }    
    
  }

  static PageRoute _pageRoute(Widget child, String routeName) {

    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb) 
        ? FadeTransition(
            opacity: animation,
            child: child
          )
        : CupertinoPageTransition(
            primaryRouteAnimation: animation,
            secondaryRouteAnimation: __,
            child: child,
            linearTransition: true
          )
    );

  }

}