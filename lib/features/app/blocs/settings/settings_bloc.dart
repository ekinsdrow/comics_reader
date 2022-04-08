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
    on<SettingsEvent>(_update);
  }

  final ISettingsRepository settingsRepository;

  FutureOr<void> _update(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await settingsRepository.saveSettings(settings: event.settings);

    emit(
      SettingsState.initial(settings: event.settings),
    );
  }
}
