import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comics_reader/features/app/data/models/settings.dart';
import 'package:comics_reader/features/app/data/repositories/settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required this.settingsRepository,
  }) : super(
          _Initial(
            settings: Settings.defaultValue(),
          ),
        ) {
    on<_Update>(_update);
    on<_Get>(_get);
  }

  final ISettingsRepository settingsRepository;

  FutureOr<void> _update(
    _Update event,
    Emitter<SettingsState> emit,
  ) async {
    await settingsRepository.saveSettings(settings: event.settings);

    emit(
      SettingsState.initial(settings: event.settings),
    );
  }

  FutureOr<void> _get(
    _Get event,
    Emitter<SettingsState> emit,
  ) async {
    final settings = await settingsRepository.getSettings();

    emit(
      SettingsState.initial(settings: settings),
    );
  }
}
