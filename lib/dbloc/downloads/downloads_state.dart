part of 'downloads_bloc.dart';

@freezed
class Downloadstate with _$Downloadstate{
  const factory Downloadstate({
   required bool isloading,
   List<Downloadmodel>? downloads,
  }) = _Downloadstate;
}