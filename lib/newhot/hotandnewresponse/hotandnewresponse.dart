import 'package:json_annotation/json_annotation.dart';

part 'hotandnewresponse.g.dart';

@JsonSerializable()
class Hotandnewresponse {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<HotAndnewData> results;

  Hotandnewresponse({this.page, this.results = const []});

  factory Hotandnewresponse.fromJson(Map<String, dynamic> json) {
    return _$HotandnewresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewresponseToJson(this);
}

@JsonSerializable()
class HotAndnewData {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'title')
  String? title;

  HotAndnewData({
    this.adult,
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotAndnewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndnewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndnewDataToJson(this);
}
