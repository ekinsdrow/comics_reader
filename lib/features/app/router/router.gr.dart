// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const InitialPage());
    },
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    ComicsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ComicsPage());
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(InitialRoute.name, path: '/'),
        RouteConfig(MainRoute.name, path: '/main-page'),
        RouteConfig(ComicsRoute.name, path: '/comics-page'),
        RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for
/// [InitialPage]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute() : super(InitialRoute.name, path: '/');

  static const String name = 'InitialRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/main-page');

  static const String name = 'MainRoute';
}

/// generated route for
/// [ComicsPage]
class ComicsRoute extends PageRouteInfo<void> {
  const ComicsRoute() : super(ComicsRoute.name, path: '/comics-page');

  static const String name = 'ComicsRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
