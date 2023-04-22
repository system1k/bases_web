import 'package:fluro/fluro.dart';
import 'package:bases_web/ui/views/views.dart';

final counterHandler = Handler(
  handlerFunc: (context, params) => CounterView(base: params['base']?.first ?? '5')
);

final counterHandlerProvider = Handler(
  handlerFunc: (context, params) => CounterProviderView(base: params['q']?.first ?? '10')
);

final pageNotFound = Handler(
  handlerFunc: (_, __) => const View404()
);