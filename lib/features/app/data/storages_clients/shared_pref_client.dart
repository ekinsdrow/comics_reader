import 'dart:convert';

import 'package:comics_reader/features/app/data/models/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefClient {
  final SharedPreferences sharedPreferences;

  SharedPrefClient(this.sharedPreferences);

  final _settingsKey = 'settings';

  Future<void> saveSettings({required Settings settings}) async {
    await sharedPreferences.setString(
      _settingsKey,
      jsonEncode(
        settings.toJson(),
      ),
    );
  }

  Future<Settings> getSettings() async {
    final settings = sharedPreferences.getString(_settingsKey);

    if (settings != null) {
      return Settings.fromJson(
        jsonDecode(settings),
      );
    }

    return Settings.defaultValue();
  }
}
