import 'package:fluro/fluro.dart';
import 'package:bases_web/routes/routes_handlers.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {

    router.define(
      '/', 
      handler: counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/stateful', 
      handler: counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/stateful/:base', 
      handler: counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/provider', 
      handler: counterHandlerProvider, 
      transitionType: TransitionType.fadeIn
    );

    router.notFoundHandler = pageNotFound;

  } 

}