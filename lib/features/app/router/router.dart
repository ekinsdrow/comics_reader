import 'package:auto_route/auto_route.dart';
import 'package:comics_reader/features/comics/widgets/comics_page.dart';
import 'package:comics_reader/features/init/widgets/initial_page.dart';
import 'package:comics_reader/features/main/widgets/main_page.dart';
import 'package:comics_reader/features/settings/widgets/settings_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      name: 'InitialRoute',
      page: InitialPage,
    ),
    AutoRoute(
      name: 'MainRoute',
      page: MainPage,
    ),
    AutoRoute(
      name: 'ComicsRoute',
      page: ComicsPage,
    ),
    AutoRoute(
      name: 'SettingsRoute',
      page: SettingsPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
