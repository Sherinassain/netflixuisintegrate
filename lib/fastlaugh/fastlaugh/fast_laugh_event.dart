part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;
  const factory FastLaughEvent.likedvideo({
    required int id,
  }) = Likedvideo;
  const factory FastLaughEvent.unlikedvideo({
    required int id,
  }) = Unlikedvideo;
}
