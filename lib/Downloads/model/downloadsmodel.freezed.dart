// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloadsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloadmodel _$DownloadmodelFromJson(Map<String, dynamic> json) {
  return _Downloadmodel.fromJson(json);
}

/// @nodoc
mixin _$Downloadmodel {
  @JsonKey(name: "poster_path")
  String? get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadmodelCopyWith<Downloadmodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadmodelCopyWith<$Res> {
  factory $DownloadmodelCopyWith(
          Downloadmodel value, $Res Function(Downloadmodel) then) =
      _$DownloadmodelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class _$DownloadmodelCopyWithImpl<$Res>
    implements $DownloadmodelCopyWith<$Res> {
  _$DownloadmodelCopyWithImpl(this._value, this._then);

  final Downloadmodel _value;
  // ignore: unused_field
  final $Res Function(Downloadmodel) _then;

  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_value.copyWith(
      posterpath: posterpath == freezed
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadmodelCopyWith<$Res>
    implements $DownloadmodelCopyWith<$Res> {
  factory _$$_DownloadmodelCopyWith(
          _$_Downloadmodel value, $Res Function(_$_Downloadmodel) then) =
      __$$_DownloadmodelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class __$$_DownloadmodelCopyWithImpl<$Res>
    extends _$DownloadmodelCopyWithImpl<$Res>
    implements _$$_DownloadmodelCopyWith<$Res> {
  __$$_DownloadmodelCopyWithImpl(
      _$_Downloadmodel _value, $Res Function(_$_Downloadmodel) _then)
      : super(_value, (v) => _then(v as _$_Downloadmodel));

  @override
  _$_Downloadmodel get _value => super._value as _$_Downloadmodel;

  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_$_Downloadmodel(
      posterpath: posterpath == freezed
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Downloadmodel implements _Downloadmodel {
  const _$_Downloadmodel(
      {@JsonKey(name: "poster_path") required this.posterpath});

  factory _$_Downloadmodel.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadmodelFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterpath;

  @override
  String toString() {
    return 'Downloadmodel(posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloadmodel &&
            const DeepCollectionEquality()
                .equals(other.posterpath, posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterpath));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadmodelCopyWith<_$_Downloadmodel> get copyWith =>
      __$$_DownloadmodelCopyWithImpl<_$_Downloadmodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadmodelToJson(
      this,
    );
  }
}

abstract class _Downloadmodel implements Downloadmodel {
  const factory _Downloadmodel(
          {@JsonKey(name: "poster_path") required final String? posterpath}) =
      _$_Downloadmodel;

  factory _Downloadmodel.fromJson(Map<String, dynamic> json) =
      _$_Downloadmodel.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadmodelCopyWith<_$_Downloadmodel> get copyWith =>
      throw _privateConstructorUsedError;
}
