import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  factory Settings({
    required double scale,
    required Axis comicsDirection,
    required ThemeMode themeMode,
  }) = _Settings;

  factory Settings.defaultValue() {
    return Settings(
      scale: 1,
      comicsDirection: Axis.horizontal,
      themeMode: ThemeMode.dark,
    );
  }

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
