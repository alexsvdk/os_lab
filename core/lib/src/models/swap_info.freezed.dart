// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwapInfo _$SwapInfoFromJson(Map<String, dynamic> json) {
  return _SwapInfo.fromJson(json);
}

/// @nodoc
class _$SwapInfoTearOff {
  const _$SwapInfoTearOff();

  _SwapInfo call(String swapSize, String freeSpace) {
    return _SwapInfo(
      swapSize,
      freeSpace,
    );
  }

  SwapInfo fromJson(Map<String, Object?> json) {
    return SwapInfo.fromJson(json);
  }
}

/// @nodoc
const $SwapInfo = _$SwapInfoTearOff();

/// @nodoc
mixin _$SwapInfo {
  String get swapSize => throw _privateConstructorUsedError;
  String get freeSpace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapInfoCopyWith<SwapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapInfoCopyWith<$Res> {
  factory $SwapInfoCopyWith(SwapInfo value, $Res Function(SwapInfo) then) =
      _$SwapInfoCopyWithImpl<$Res>;
  $Res call({String swapSize, String freeSpace});
}

/// @nodoc
class _$SwapInfoCopyWithImpl<$Res> implements $SwapInfoCopyWith<$Res> {
  _$SwapInfoCopyWithImpl(this._value, this._then);

  final SwapInfo _value;
  // ignore: unused_field
  final $Res Function(SwapInfo) _then;

  @override
  $Res call({
    Object? swapSize = freezed,
    Object? freeSpace = freezed,
  }) {
    return _then(_value.copyWith(
      swapSize: swapSize == freezed
          ? _value.swapSize
          : swapSize // ignore: cast_nullable_to_non_nullable
              as String,
      freeSpace: freeSpace == freezed
          ? _value.freeSpace
          : freeSpace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SwapInfoCopyWith<$Res> implements $SwapInfoCopyWith<$Res> {
  factory _$SwapInfoCopyWith(_SwapInfo value, $Res Function(_SwapInfo) then) =
      __$SwapInfoCopyWithImpl<$Res>;
  @override
  $Res call({String swapSize, String freeSpace});
}

/// @nodoc
class __$SwapInfoCopyWithImpl<$Res> extends _$SwapInfoCopyWithImpl<$Res>
    implements _$SwapInfoCopyWith<$Res> {
  __$SwapInfoCopyWithImpl(_SwapInfo _value, $Res Function(_SwapInfo) _then)
      : super(_value, (v) => _then(v as _SwapInfo));

  @override
  _SwapInfo get _value => super._value as _SwapInfo;

  @override
  $Res call({
    Object? swapSize = freezed,
    Object? freeSpace = freezed,
  }) {
    return _then(_SwapInfo(
      swapSize == freezed
          ? _value.swapSize
          : swapSize // ignore: cast_nullable_to_non_nullable
              as String,
      freeSpace == freezed
          ? _value.freeSpace
          : freeSpace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapInfo implements _SwapInfo {
  const _$_SwapInfo(this.swapSize, this.freeSpace);

  factory _$_SwapInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SwapInfoFromJson(json);

  @override
  final String swapSize;
  @override
  final String freeSpace;

  @override
  String toString() {
    return 'SwapInfo(swapSize: $swapSize, freeSpace: $freeSpace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwapInfo &&
            const DeepCollectionEquality().equals(other.swapSize, swapSize) &&
            const DeepCollectionEquality().equals(other.freeSpace, freeSpace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(swapSize),
      const DeepCollectionEquality().hash(freeSpace));

  @JsonKey(ignore: true)
  @override
  _$SwapInfoCopyWith<_SwapInfo> get copyWith =>
      __$SwapInfoCopyWithImpl<_SwapInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapInfoToJson(this);
  }
}

abstract class _SwapInfo implements SwapInfo {
  const factory _SwapInfo(String swapSize, String freeSpace) = _$_SwapInfo;

  factory _SwapInfo.fromJson(Map<String, dynamic> json) = _$_SwapInfo.fromJson;

  @override
  String get swapSize;
  @override
  String get freeSpace;
  @override
  @JsonKey(ignore: true)
  _$SwapInfoCopyWith<_SwapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
