// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'display_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisplayInfo _$DisplayInfoFromJson(Map<String, dynamic> json) {
  return _DisplayInfo.fromJson(json);
}

/// @nodoc
class _$DisplayInfoTearOff {
  const _$DisplayInfoTearOff();

  _DisplayInfo call(int width, int height) {
    return _DisplayInfo(
      width,
      height,
    );
  }

  DisplayInfo fromJson(Map<String, Object?> json) {
    return DisplayInfo.fromJson(json);
  }
}

/// @nodoc
const $DisplayInfo = _$DisplayInfoTearOff();

/// @nodoc
mixin _$DisplayInfo {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayInfoCopyWith<DisplayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayInfoCopyWith<$Res> {
  factory $DisplayInfoCopyWith(
          DisplayInfo value, $Res Function(DisplayInfo) then) =
      _$DisplayInfoCopyWithImpl<$Res>;
  $Res call({int width, int height});
}

/// @nodoc
class _$DisplayInfoCopyWithImpl<$Res> implements $DisplayInfoCopyWith<$Res> {
  _$DisplayInfoCopyWithImpl(this._value, this._then);

  final DisplayInfo _value;
  // ignore: unused_field
  final $Res Function(DisplayInfo) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DisplayInfoCopyWith<$Res>
    implements $DisplayInfoCopyWith<$Res> {
  factory _$DisplayInfoCopyWith(
          _DisplayInfo value, $Res Function(_DisplayInfo) then) =
      __$DisplayInfoCopyWithImpl<$Res>;
  @override
  $Res call({int width, int height});
}

/// @nodoc
class __$DisplayInfoCopyWithImpl<$Res> extends _$DisplayInfoCopyWithImpl<$Res>
    implements _$DisplayInfoCopyWith<$Res> {
  __$DisplayInfoCopyWithImpl(
      _DisplayInfo _value, $Res Function(_DisplayInfo) _then)
      : super(_value, (v) => _then(v as _DisplayInfo));

  @override
  _DisplayInfo get _value => super._value as _DisplayInfo;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_DisplayInfo(
      width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DisplayInfo implements _DisplayInfo {
  const _$_DisplayInfo(this.width, this.height);

  factory _$_DisplayInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DisplayInfoFromJson(json);

  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'DisplayInfo(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisplayInfo &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$DisplayInfoCopyWith<_DisplayInfo> get copyWith =>
      __$DisplayInfoCopyWithImpl<_DisplayInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisplayInfoToJson(this);
  }
}

abstract class _DisplayInfo implements DisplayInfo {
  const factory _DisplayInfo(int width, int height) = _$_DisplayInfo;

  factory _DisplayInfo.fromJson(Map<String, dynamic> json) =
      _$_DisplayInfo.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$DisplayInfoCopyWith<_DisplayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
