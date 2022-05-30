import 'package:stacked_generator/src/generators/router/route_config/route_config_iterator.dart';

import '../route_config/route_config.dart';

/// Extracts and holds router configs
/// to be used in [RouterClassGenerator]

class RouterConfig implements Aggregator {
  final bool generateNavigationHelper;
  final List<RouteConfig> routes;
  final String routesClassName;
  final String? routeNamePrefix;
  final String routerClassName;

  const RouterConfig({
    this.generateNavigationHelper = false,
    this.routes = const [],
    required this.routesClassName,
    this.routeNamePrefix,
    required this.routerClassName,
  });

  RouterConfig copyWith({
    bool? generateNavigationHelper,
    List<RouteConfig>? routes,
    String? routesClassName,
    String? routeNamePrefix,
    String? routerClassName,
  }) {
    return RouterConfig(
      generateNavigationHelper:
          generateNavigationHelper ?? this.generateNavigationHelper,
      routes: routes ?? this.routes,
      routesClassName: routesClassName ?? this.routesClassName,
      routeNamePrefix: routeNamePrefix ?? this.routeNamePrefix,
      routerClassName: routerClassName ?? this.routerClassName,
    );
  }

  @override
  String toString() {
    return 'RouterConfig{routes: $routes, routesClassName: $routesClassName, routerClassName: $routerClassName}';
  }

  @override
  RouteConfigIterator getIterator() => RouteConfigIterator(routes);
}
