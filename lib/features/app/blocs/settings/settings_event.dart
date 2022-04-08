part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.update({
    required Settings settings,
  }) = _Update;

    const factory SettingsEvent.get() = _Get;
}
