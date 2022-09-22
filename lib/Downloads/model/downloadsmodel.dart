
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadsmodel.freezed.dart';
part 'downloadsmodel.g.dart';

@freezed
class Downloadmodel with _$Downloadmodel{
  const factory Downloadmodel({
   @JsonKey(name: "poster_path") required String? posterpath,
  }) = _Downloadmodel;

  factory Downloadmodel.fromJson(Map<String, dynamic> json) => _$DownloadmodelFromJson(json);
}