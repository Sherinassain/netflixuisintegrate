import 'package:json_annotation/json_annotation.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';

part 'searchresponse.g.dart';

@JsonSerializable()
class Searchresponse {
  @JsonKey(name: 'results')
  List<SearchresultData> results;

  Searchresponse({this.results = const []});

  factory Searchresponse.fromJson(Map<String, dynamic> json) {
    return _$SearchresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresponseToJson(this);
}

@JsonSerializable()
class SearchresultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;


  SearchresultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchresultData.fromJson(Map<String, dynamic> json) {
    return _$SearchresultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresultDataToJson(this);
}
