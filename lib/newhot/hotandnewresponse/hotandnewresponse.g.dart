// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnewresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotandnewresponse _$HotandnewresponseFromJson(Map<String, dynamic> json) =>
    Hotandnewresponse(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HotAndnewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HotandnewresponseToJson(Hotandnewresponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

HotAndnewData _$HotAndnewDataFromJson(Map<String, dynamic> json) =>
    HotAndnewData(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    )..originalName = json['original_name'] as String?;

Map<String, dynamic> _$HotAndnewDataToJson(HotAndnewData instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
