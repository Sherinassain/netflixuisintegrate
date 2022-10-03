// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchresponse _$SearchresponseFromJson(Map<String, dynamic> json) =>
    Searchresponse(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchresultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchresponseToJson(Searchresponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchresultData _$SearchresultDataFromJson(Map<String, dynamic> json) =>
    SearchresultData(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchresultDataToJson(SearchresultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
