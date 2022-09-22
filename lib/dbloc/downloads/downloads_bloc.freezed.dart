// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Downloadsevent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadimage value) getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadseventCopyWith<$Res> {
  factory $DownloadseventCopyWith(
          Downloadsevent value, $Res Function(Downloadsevent) then) =
      _$DownloadseventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadseventCopyWithImpl<$Res>
    implements $DownloadseventCopyWith<$Res> {
  _$DownloadseventCopyWithImpl(this._value, this._then);

  final Downloadsevent _value;
  // ignore: unused_field
  final $Res Function(Downloadsevent) _then;
}

/// @nodoc
abstract class _$$_GetDownloadimageCopyWith<$Res> {
  factory _$$_GetDownloadimageCopyWith(
          _$_GetDownloadimage value, $Res Function(_$_GetDownloadimage) then) =
      __$$_GetDownloadimageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadimageCopyWithImpl<$Res>
    extends _$DownloadseventCopyWithImpl<$Res>
    implements _$$_GetDownloadimageCopyWith<$Res> {
  __$$_GetDownloadimageCopyWithImpl(
      _$_GetDownloadimage _value, $Res Function(_$_GetDownloadimage) _then)
      : super(_value, (v) => _then(v as _$_GetDownloadimage));

  @override
  _$_GetDownloadimage get _value => super._value as _$_GetDownloadimage;
}

/// @nodoc

class _$_GetDownloadimage implements _GetDownloadimage {
  const _$_GetDownloadimage();

  @override
  String toString() {
    return 'Downloadsevent.getDownloadimage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadimage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadimage,
  }) {
    return getDownloadimage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadimage,
  }) {
    return getDownloadimage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadimage,
    required TResult orElse(),
  }) {
    if (getDownloadimage != null) {
      return getDownloadimage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadimage value) getDownloadimage,
  }) {
    return getDownloadimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
  }) {
    return getDownloadimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
    required TResult orElse(),
  }) {
    if (getDownloadimage != null) {
      return getDownloadimage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadimage implements Downloadsevent {
  const factory _GetDownloadimage() = _$_GetDownloadimage;
}

/// @nodoc
mixin _$Downloadstate {
  bool get isloading => throw _privateConstructorUsedError;
  List<Downloadmodel>? get downloads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadstateCopyWith<Downloadstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadstateCopyWith<$Res> {
  factory $DownloadstateCopyWith(
          Downloadstate value, $Res Function(Downloadstate) then) =
      _$DownloadstateCopyWithImpl<$Res>;
  $Res call({bool isloading, List<Downloadmodel>? downloads});
}

/// @nodoc
class _$DownloadstateCopyWithImpl<$Res>
    implements $DownloadstateCopyWith<$Res> {
  _$DownloadstateCopyWithImpl(this._value, this._then);

  final Downloadstate _value;
  // ignore: unused_field
  final $Res Function(Downloadstate) _then;

  @override
  $Res call({
    Object? isloading = freezed,
    Object? downloads = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloadmodel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadstateCopyWith<$Res>
    implements $DownloadstateCopyWith<$Res> {
  factory _$$_DownloadstateCopyWith(
          _$_Downloadstate value, $Res Function(_$_Downloadstate) then) =
      __$$_DownloadstateCopyWithImpl<$Res>;
  @override
  $Res call({bool isloading, List<Downloadmodel>? downloads});
}

/// @nodoc
class __$$_DownloadstateCopyWithImpl<$Res>
    extends _$DownloadstateCopyWithImpl<$Res>
    implements _$$_DownloadstateCopyWith<$Res> {
  __$$_DownloadstateCopyWithImpl(
      _$_Downloadstate _value, $Res Function(_$_Downloadstate) _then)
      : super(_value, (v) => _then(v as _$_Downloadstate));

  @override
  _$_Downloadstate get _value => super._value as _$_Downloadstate;

  @override
  $Res call({
    Object? isloading = freezed,
    Object? downloads = freezed,
  }) {
    return _then(_$_Downloadstate(
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloadmodel>?,
    ));
  }
}

/// @nodoc

class _$_Downloadstate implements _Downloadstate {
  const _$_Downloadstate(
      {required this.isloading, final List<Downloadmodel>? downloads})
      : _downloads = downloads;

  @override
  final bool isloading;
  final List<Downloadmodel>? _downloads;
  @override
  List<Downloadmodel>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Downloadstate(isloading: $isloading, downloads: $downloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloadstate &&
            const DeepCollectionEquality().equals(other.isloading, isloading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isloading),
      const DeepCollectionEquality().hash(_downloads));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadstateCopyWith<_$_Downloadstate> get copyWith =>
      __$$_DownloadstateCopyWithImpl<_$_Downloadstate>(this, _$identity);
}

abstract class _Downloadstate implements Downloadstate {
  const factory _Downloadstate(
      {required final bool isloading,
      final List<Downloadmodel>? downloads}) = _$_Downloadstate;

  @override
  bool get isloading;
  @override
  List<Downloadmodel>? get downloads;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadstateCopyWith<_$_Downloadstate> get copyWith =>
      throw _privateConstructorUsedError;
}
