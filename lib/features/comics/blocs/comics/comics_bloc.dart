import 'dart:async';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:bloc/bloc.dart';
import 'package:comics_reader/features/comics/models/comics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'comics_event.dart';
part 'comics_state.dart';
part 'comics_bloc.freezed.dart';

class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc() : super(const _Loading()) {
    on<_OpenCBZ>(_openCBZ);
    on<_OpenFolder>(_openFolder);
  }

  FutureOr<void> _openCBZ(
    _OpenCBZ event,
    Emitter<ComicsState> emit,
  ) async {
    emit(
      const ComicsState.loading(),
    );

    try {
      final inputStream = InputFileStream(event.file.path);
      final archive = ZipDecoder().decodeBuffer(inputStream);
      final images = <File>[];
      final comicsName = event.file.path.split('/').last.split('.').first;
      for (var file in archive.files) {
        if (file.isFile) {
          final path = (await getApplicationDocumentsDirectory()).path;
          final filepath = '$path/$comicsName';

          final outputStream = OutputFileStream('$filepath/${file.name}');
          file.writeContent(outputStream);
          outputStream.close();

          final f = File('$filepath/${file.name}');
          images.add(f);
        }
      }

      images.sort(
        (a, b) => a.path.compareTo(b.path),
      );

      emit(
        ComicsState.comics(
          comics: Comics(
            name: comicsName,
            images: images,
          ),
        ),
      );
    } catch (e) {
      emit(
        ComicsState.error(error: 'Error $e'),
      );
    }
  }

  FutureOr<void> _openFolder(
    _OpenFolder event,
    Emitter<ComicsState> emit,
  ) async {
    emit(
      const ComicsState.loading(),
    );

    try {
      final dir = Directory(event.path);

      if (await dir.exists()) {
        final dirFiles = await dir.list().toList();
        final files = dirFiles.whereType<File>();

        final images = <File>[];

        for (var file in files) {
          final ext = extension(file.path);
          if (ext == '.jpg' ||
              ext == '.jpeg' ||
              ext == '.png' ||
              ext == '.gif') {
            images.add(file);
          }
        }

        images.sort(
          (a, b) => a.path.compareTo(b.path),
        );

        if (images.isEmpty) {
          emit(
            const ComicsState.error(
              error: 'Directory is empty',
            ),
          );
        } else {
          emit(
            ComicsState.comics(
              comics: Comics(
                name: dir.path.split('/').last,
                images: images,
              ),
            ),
          );
        }
      } else {
        emit(
          const ComicsState.error(
            error: 'Directory not exist',
          ),
        );
      }
    } catch (e) {
      emit(
        ComicsState.error(error: 'Error $e'),
      );
    }
  }
}
