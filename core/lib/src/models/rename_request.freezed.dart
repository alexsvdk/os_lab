// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rename_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RenameRequest _$RenameRequestFromJson(Map<String, dynamic> json) {
  return _RenameRequest.fromJson(json);
}

/// @nodoc
class _$RenameRequestTearOff {
  const _$RenameRequestTearOff();

  _RenameRequest call(String name) {
    return _RenameRequest(
      name,
    );
  }

  RenameRequest fromJson(Map<String, Object?> json) {
    return RenameRequest.fromJson(json);
  }
}

/// @nodoc
const $RenameRequest = _$RenameRequestTearOff();

/// @nodoc
mixin _$RenameRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenameRequestCopyWith<RenameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameRequestCopyWith<$Res> {
  factory $RenameRequestCopyWith(
          RenameRequest value, $Res Function(RenameRequest) then) =
      _$RenameRequestCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$RenameRequestCopyWithImpl<$Res>
    implements $RenameRequestCopyWith<$Res> {
  _$RenameRequestCopyWithImpl(this._value, this._then);

  final RenameRequest _value;
  // ignore: unused_field
  final $Res Function(RenameRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RenameRequestCopyWith<$Res>
    implements $RenameRequestCopyWith<$Res> {
  factory _$RenameRequestCopyWith(
          _RenameRequest value, $Res Function(_RenameRequest) then) =
      __$RenameRequestCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$RenameRequestCopyWithImpl<$Res>
    extends _$RenameRequestCopyWithImpl<$Res>
    implements _$RenameRequestCopyWith<$Res> {
  __$RenameRequestCopyWithImpl(
      _RenameRequest _value, $Res Function(_RenameRequest) _then)
      : super(_value, (v) => _then(v as _RenameRequest));

  @override
  _RenameRequest get _value => super._value as _RenameRequest;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_RenameRequest(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RenameRequest implements _RenameRequest {
  const _$_RenameRequest(this.name);

  factory _$_RenameRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RenameRequestFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'RenameRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RenameRequest &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$RenameRequestCopyWith<_RenameRequest> get copyWith =>
      __$RenameRequestCopyWithImpl<_RenameRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenameRequestToJson(this);
  }
}

abstract class _RenameRequest implements RenameRequest {
  const factory _RenameRequest(String name) = _$_RenameRequest;

  factory _RenameRequest.fromJson(Map<String, dynamic> json) =
      _$_RenameRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$RenameRequestCopyWith<_RenameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
