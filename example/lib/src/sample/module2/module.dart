import 'package:flutter/widgets.dart';
import 'package:thrio_qmui/thrio_qmui.dart';
import 'page3.dart';
import 'page4.dart';

class Module
    with
        ThrioModule,
        ModulePageBuilder,
        ModuleRouteObserver,
        NavigatorRouteObserver {
  @override
  void onPageBuilderRegister() {
    registerPageBuilder(
      '/biz1/flutter3',
      (settings) => Page3(
        index: settings.index,
        params: settings.params,
      ),
    );
    registerPageBuilder(
      '/biz2/flutter4',
      (settings) => Page4(
        index: settings.index,
        params: settings.params,
      ),
    );
  }

  @override
  void onRouteObserverRegister() {
    registerRouteObserver(this);
  }

  @override
  void didPush(
    RouteSettings routeSettings,
    RouteSettings previousRouteSettings,
  ) {}

  @override
  void didPop(
    RouteSettings routeSettings,
    RouteSettings previousRouteSettings,
  ) {}

  @override
  void didPopTo(
    RouteSettings routeSettings,
    RouteSettings previousRouteSettings,
  ) {}

  @override
  void didRemove(
    RouteSettings routeSettings,
    RouteSettings previousRouteSettings,
  ) {}
}
