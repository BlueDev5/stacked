import '../models/route_guard_config.dart';
import '../models/route_parameter_config.dart';
import 'route_config.dart';

class AdaptiveRouteConfig extends RouteConfig {
  final String? cupertinoNavTitle;

  const AdaptiveRouteConfig({
    required super.name,
    required super.pathName,
    required super.className,
    super.fullscreenDialog,
    super.maintainState,
    super.returnType,
    super.parameters,
    super.guards,
    super.hasWrapper,
    super.hasConstConstructor,
    super.children,
    super.imports,
    this.cupertinoNavTitle,
  });

  @override
  List<String> get extraImports => const ["package:stacked/stacked.dart"];
  @override
  String registerRoutes() {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write(super.registerArgs());
    stringBuffer.write(
        'return buildAdaptivePageRoute<$processedReturnType>(builder: (context) => $joinedConstructerParams, settings: data,');
    if (cupertinoNavTitle != null) {
      stringBuffer.write("cupertinoTitle:'${cupertinoNavTitle}',");
    }
    stringBuffer.write(super.registerRoutes());

    return stringBuffer.toString();
  }

  AdaptiveRouteConfig copyWith({
    String? name,
    String? pathName,
    String? className,
    bool? fullscreenDialog,
    bool? maintainState,
    String? returnType,
    List<RouteParamConfig>? parameters,
    List<RouteGuardConfig>? guards,
    bool? hasWrapper,
    bool? hasConstConstructor,
    List<RouteConfig>? children,
    Set<String>? imports,
    String? cupertinoNavTitle,
  }) {
    return AdaptiveRouteConfig(
      name: name ?? this.name,
      pathName: pathName ?? this.pathName,
      className: className ?? this.className,
      fullscreenDialog: fullscreenDialog ?? this.fullscreenDialog,
      maintainState: maintainState ?? this.maintainState,
      returnType: returnType ?? this.returnType,
      parameters: parameters ?? this.parameters,
      guards: guards ?? this.guards,
      hasWrapper: hasWrapper ?? this.hasWrapper,
      hasConstConstructor: hasConstConstructor ?? this.hasConstConstructor,
      children: children ?? this.children,
      imports: imports ?? this.imports,
      cupertinoNavTitle: cupertinoNavTitle ?? this.cupertinoNavTitle,
    );
  }
}
