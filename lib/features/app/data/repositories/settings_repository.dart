import 'package:comics_reader/features/app/data/models/settings.dart';
import 'package:comics_reader/features/app/data/storages_clients/shared_pref_client.dart';

abstract class ISettingsRepository {
  Future<void> saveSettings({
    required Settings settings,
  });

  Future<Settings> getSettings();
}

class SettingsRepository implements ISettingsRepository {
  final SharedPrefClient sharedPrefClient;

  SettingsRepository({
    required this.sharedPrefClient,
  });

  @override
  Future<Settings> getSettings() {
    return sharedPrefClient.getSettings();
  }

  @override
  Future<void> saveSettings({required Settings settings}) async {
    await sharedPrefClient.saveSettings(
      settings: settings,
    );
  }
}
