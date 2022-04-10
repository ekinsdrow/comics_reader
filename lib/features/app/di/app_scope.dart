import 'package:comics_reader/features/app/blocs/last_comics/last_comics_bloc.dart';
import 'package:comics_reader/features/app/blocs/settings/settings_bloc.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:comics_reader/features/app/data/repositories/last_comicses_repository.dart';
import 'package:comics_reader/features/app/data/repositories/settings_repository.dart';
import 'package:comics_reader/features/app/data/storages_clients/last_comicses_db_client.dart';
import 'package:comics_reader/features/app/data/storages_clients/shared_pref_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqlite_api.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    required this.child,
    required this.sharedPreferences,
    required this.database,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final SharedPreferences sharedPreferences;
  final Database database;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SettingsNotifier(),
        ),
        Provider(
          create: (context) => SharedPrefClient(
            sharedPreferences,
          ),
        ),
        Provider(
          create: (context) => LastComicsesDbClient(
            db: database,
          ),
        ),
      ],
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
          RepositoryProvider<ILastComicsesRepository>(
            create: (context) => LastComicsesRepository(
              dbClient: Provider.of<LastComicsesDbClient>(
                context,
                listen: false,
              ),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SettingsBloc(
                settingsRepository:
                    RepositoryProvider.of<ISettingsRepository>(context),
              )..add(const SettingsEvent.get()),
              lazy: false,
            ),
            BlocProvider(
              create: (context) => LastComicsBloc(
                lastComicsesRepository:
                    RepositoryProvider.of<ILastComicsesRepository>(context),
              )..add(const LastComicsEvent.getLastComicses()),
            ),
          ],
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
    );
  }
}
