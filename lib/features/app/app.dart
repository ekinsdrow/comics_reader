import 'package:comics_reader/common/assets/themes/themes.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:comics_reader/features/app/di/app_scope.dart';
import 'package:comics_reader/features/app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  App({
    required this.sharedPreferences,
    Key? key,
  }) : super(key: key);

  final _router = AppRouter();
  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return AppScope(
      sharedPreferences: sharedPreferences,
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: _router.defaultRouteParser(),
            routerDelegate: _router.delegate(),
            title: 'Flutter DAW',
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            themeMode: context.watch<SettingsNotifier>().settings.themeMode,
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
          );
        },
      ),
    );
  }
}
