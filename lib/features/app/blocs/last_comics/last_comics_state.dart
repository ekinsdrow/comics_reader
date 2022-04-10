part of 'last_comics_bloc.dart';

@freezed
class LastComicsState with _$LastComicsState {
  const factory LastComicsState.loading() = _Loading;
  const factory LastComicsState.error({required String error}) = _Error;
  const factory LastComicsState.comicses({required List<LastComics> comicses}) =
      _Comicses;
}
