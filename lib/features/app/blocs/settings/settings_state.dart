part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required Settings settings,
  }) = _Initial;
}
