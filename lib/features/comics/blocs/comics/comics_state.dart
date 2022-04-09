part of 'comics_bloc.dart';

@freezed
class ComicsState with _$ComicsState {
  const factory ComicsState.loading() = _Loading;
  const factory ComicsState.error({
    required String error,
  }) = _Error;
  const factory ComicsState.comics({
    required Comics comics,
  }) = _Comics;
}
