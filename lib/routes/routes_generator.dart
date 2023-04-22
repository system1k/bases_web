import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/views/views.dart';

class RoutesGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case '/stateful':
        return _pageRoute(const CounterView(base: '5'), '/stateful');

      case '/provider':
        return _pageRoute(const CounterProviderView(base: '10'), '/provider');

      default:
        return _pageRoute(const View404(), '/404');

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
            linearTransition: true,
            child: child
          )
    );

  }

}