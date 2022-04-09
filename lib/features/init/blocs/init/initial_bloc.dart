import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'initial_event.dart';
part 'initial_state.dart';
part 'initial_bloc.freezed.dart';

class InitialBloc extends Bloc<InitialEvent, InitialState> {
  InitialBloc() : super(const _Loading()) {
    on<InitialEvent>(_onStarted);
  }

  Future<FutureOr<void>> _onStarted(
    InitialEvent event,
    Emitter<InitialState> emit,
  ) async {
    emit(const InitialState.loading());

    //TODO: add initialization
    final path = (await getApplicationDocumentsDirectory()).path;
    final dir = Directory(path);

    if (await dir.exists()) {
      await dir.delete(recursive: true);
    }

    emit(const InitialState.success());
  }
}
