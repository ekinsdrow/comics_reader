import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comics_reader/features/app/data/models/last_comics.dart';
import 'package:comics_reader/features/app/data/repositories/last_comicses_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_comics_event.dart';
part 'last_comics_state.dart';
part 'last_comics_bloc.freezed.dart';

class LastComicsBloc extends Bloc<LastComicsEvent, LastComicsState> {
  LastComicsBloc({
    required this.lastComicsesRepository,
  }) : super(const _Loading()) {
    on<_Get>(_onGet);
    on<_Save>(_onSave);
  }

  final ILastComicsesRepository lastComicsesRepository;

  FutureOr<void> _onGet(
    _Get event,
    Emitter<LastComicsState> emit,
  ) async {
    emit(
      const LastComicsState.loading(),
    );

    List<LastComics>? comicses;

    try {
      comicses = await lastComicsesRepository.getLastComicses();
    } catch (e) {
      emit(
        LastComicsState.error(error: 'Error: $e'),
      );
    }

    if (comicses != null) {
      emit(
        LastComicsState.comicses(
          comicses: comicses,
        ),
      );
    }
  }

  FutureOr<void> _onSave(
    _Save event,
    Emitter<LastComicsState> emit,
  ) async {
    emit(
      const LastComicsState.loading(),
    );

    try {
      await lastComicsesRepository.saveComics(comics: event.comics);
    } catch (e) {
      emit(
        LastComicsState.error(error: 'Error: $e'),
      );
    }

    add(
      const _Get(),
    );
  }

}
