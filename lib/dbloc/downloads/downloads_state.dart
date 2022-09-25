part of 'downloads_bloc.dart';

@freezed
class Downloadstate with _$Downloadstate {
  const factory Downloadstate({
    required bool isloading,
    required List<Downloadmodel> downloads,
    required Option<Either<Mainfailures, List<Downloadmodel>>>
        downloadsucessorfailure,
  }) = _Downloadstate;
  factory Downloadstate.intial() {
    return Downloadstate(
      isloading: false,
      downloadsucessorfailure: None(),
      downloads: [],
    );
  }
}
