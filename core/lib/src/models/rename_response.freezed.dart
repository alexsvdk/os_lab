// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RenameResponse _$RenameResponseFromJson(Map<String, dynamic> json) {
  return _RenameResponse.fromJson(json);
}

/// @nodoc
class _$RenameResponseTearOff {
  const _$RenameResponseTearOff();

  _RenameResponse call(bool isOk) {
    return _RenameResponse(
      isOk,
    );
  }

  RenameResponse fromJson(Map<String, Object?> json) {
    return RenameResponse.fromJson(json);
  }
}

/// @nodoc
const $RenameResponse = _$RenameResponseTearOff();

/// @nodoc
mixin _$RenameResponse {
  bool get isOk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenameResponseCopyWith<RenameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameResponseCopyWith<$Res> {
  factory $RenameResponseCopyWith(
          RenameResponse value, $Res Function(RenameResponse) then) =
      _$RenameResponseCopyWithImpl<$Res>;
  $Res call({bool isOk});
}

/// @nodoc
class _$RenameResponseCopyWithImpl<$Res>
    implements $RenameResponseCopyWith<$Res> {
  _$RenameResponseCopyWithImpl(this._value, this._then);

  final RenameResponse _value;
  // ignore: unused_field
  final $Res Function(RenameResponse) _then;

  @override
  $Res call({
    Object? isOk = freezed,
  }) {
    return _then(_value.copyWith(
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RenameResponseCopyWith<$Res>
    implements $RenameResponseCopyWith<$Res> {
  factory _$RenameResponseCopyWith(
          _RenameResponse value, $Res Function(_RenameResponse) then) =
      __$RenameResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool isOk});
}

/// @nodoc
class __$RenameResponseCopyWithImpl<$Res>
    extends _$RenameResponseCopyWithImpl<$Res>
    implements _$RenameResponseCopyWith<$Res> {
  __$RenameResponseCopyWithImpl(
      _RenameResponse _value, $Res Function(_RenameResponse) _then)
      : super(_value, (v) => _then(v as _RenameResponse));

  @override
  _RenameResponse get _value => super._value as _RenameResponse;

  @override
  $Res call({
    Object? isOk = freezed,
  }) {
    return _then(_RenameResponse(
      isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RenameResponse implements _RenameResponse {
  const _$_RenameResponse(this.isOk);

  factory _$_RenameResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RenameResponseFromJson(json);

  @override
  final bool isOk;

  @override
  String toString() {
    return 'RenameResponse(isOk: $isOk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RenameResponse &&
            const DeepCollectionEquality().equals(other.isOk, isOk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isOk));

  @JsonKey(ignore: true)
  @override
  _$RenameResponseCopyWith<_RenameResponse> get copyWith =>
      __$RenameResponseCopyWithImpl<_RenameResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenameResponseToJson(this);
  }
}

abstract class _RenameResponse implements RenameResponse {
  const factory _RenameResponse(bool isOk) = _$_RenameResponse;

  factory _RenameResponse.fromJson(Map<String, dynamic> json) =
      _$_RenameResponse.fromJson;

  @override
  bool get isOk;
  @override
  @JsonKey(ignore: true)
  _$RenameResponseCopyWith<_RenameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
