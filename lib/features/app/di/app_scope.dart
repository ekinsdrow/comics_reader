import 'package:comics_reader/features/app/blocs/settings/settings_bloc.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:comics_reader/features/app/data/repositories/settings_repository.dart';
import 'package:comics_reader/features/app/data/storages_clients/shared_pref_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    required this.child,
    required this.sharedPreferences,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsNotifier(),
      child: Provider(
        create: (context) => SharedPrefClient(
          sharedPreferences,
        ),
        child: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<ISettingsRepository>(
              create: (context) => SettingsRepository(
                sharedPrefClient: Provider.of<SharedPrefClient>(
                  context,
                  listen: false,
                ),
              ),
            ),
          ],
          child: BlocProvider(
            create: (context) => SettingsBloc(
              settingsRepository:
                  RepositoryProvider.of<ISettingsRepository>(context),
            ),
            lazy: false,
            child: BlocListener<SettingsBloc, SettingsState>(
              listener: (context, state) => state.whenOrNull(
                initial: (settings) =>
                    context.read<SettingsNotifier>().updateSettings(
                          settings: settings,
                        ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
