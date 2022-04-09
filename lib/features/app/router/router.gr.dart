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
      final args = routeData.argsAs<ComicsRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              ComicsPage(key: args.key, file: args.file, images: args.images));
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
class ComicsRoute extends PageRouteInfo<ComicsRouteArgs> {
  ComicsRoute({Key? key, required File? file, required List<File>? images})
      : super(ComicsRoute.name,
            path: '/comics-page',
            args: ComicsRouteArgs(key: key, file: file, images: images));

  static const String name = 'ComicsRoute';
}

class ComicsRouteArgs {
  const ComicsRouteArgs({this.key, required this.file, required this.images});

  final Key? key;

  final File? file;

  final List<File>? images;

  @override
  String toString() {
    return 'ComicsRouteArgs{key: $key, file: $file, images: $images}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
