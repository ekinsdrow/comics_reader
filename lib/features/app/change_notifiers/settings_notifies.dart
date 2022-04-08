import 'package:comics_reader/features/app/data/models/settings.dart';
import 'package:flutter/material.dart';

class SettingsNotifier extends ChangeNotifier {
  Settings _settings = Settings.defaultValue();

  Settings get settings => _settings;

  void updateSettings({required Settings settings}) {
    _settings = settings;
    notifyListeners();
  }
}
