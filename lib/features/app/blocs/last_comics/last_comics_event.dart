part of 'last_comics_bloc.dart';

@freezed
class LastComicsEvent with _$LastComicsEvent {
  const factory LastComicsEvent.getLastComicses() = _Get;
  const factory LastComicsEvent.saveComics({
    required LastComics comics,
  }) = _Save;
}
