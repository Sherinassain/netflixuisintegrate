part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloadmodel> videoslist,
    required bool isloading,
    required bool iserror,
  }) = _Initial;
  factory FastLaughState.initial() => FastLaughState(
        videoslist: [],
        isloading: true,
        iserror: false,
      );
}
