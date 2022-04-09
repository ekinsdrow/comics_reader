part of 'comics_bloc.dart';

@freezed
class ComicsEvent with _$ComicsEvent {
  const factory ComicsEvent.openCBZ({
    required File file,
  }) = _OpenCBZ;
  const factory ComicsEvent.openFolder({
    required String path,
  }) = _OpenFolder;
}
