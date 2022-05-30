import 'package:stacked_generator/src/generators/router/route_config/route_config.dart';

class RouteConfigIterator {
  final List<RouteConfig> _routes;
  const RouteConfigIterator(this._routes);

  RouteConfig get getNext {
    final popedRoute = _routes.removeAt(0);
    _routes.addAll(popedRoute.children);
    return popedRoute;
  }

  bool get hasNext => _routes.isNotEmpty;
}

abstract class Aggregator {
  // Retrieve an external iterator.
  RouteConfigIterator getIterator();
}
