// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailAddress _$EmailAddressFromJson(Map<String, dynamic> json) {
  return _EmailAddress.fromJson(json);
}

/// @nodoc
mixin _$EmailAddress {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAddressCopyWith<EmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAddressCopyWith<$Res> {
  factory $EmailAddressCopyWith(
          EmailAddress value, $Res Function(EmailAddress) then) =
      _$EmailAddressCopyWithImpl<$Res, EmailAddress>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$EmailAddressCopyWithImpl<$Res, $Val extends EmailAddress>
    implements $EmailAddressCopyWith<$Res> {
  _$EmailAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailAddressCopyWith<$Res>
    implements $EmailAddressCopyWith<$Res> {
  factory _$$_EmailAddressCopyWith(
          _$_EmailAddress value, $Res Function(_$_EmailAddress) then) =
      __$$_EmailAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_EmailAddressCopyWithImpl<$Res>
    extends _$EmailAddressCopyWithImpl<$Res, _$_EmailAddress>
    implements _$$_EmailAddressCopyWith<$Res> {
  __$$_EmailAddressCopyWithImpl(
      _$_EmailAddress _value, $Res Function(_$_EmailAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_EmailAddress(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailAddress implements _EmailAddress {
  const _$_EmailAddress(this.value);

  factory _$_EmailAddress.fromJson(Map<String, dynamic> json) =>
      _$$_EmailAddressFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'EmailAddress(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAddress &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAddressCopyWith<_$_EmailAddress> get copyWith =>
      __$$_EmailAddressCopyWithImpl<_$_EmailAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailAddressToJson(
      this,
    );
  }
}

abstract class _EmailAddress implements EmailAddress {
  const factory _EmailAddress(final String value) = _$_EmailAddress;

  factory _EmailAddress.fromJson(Map<String, dynamic> json) =
      _$_EmailAddress.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_EmailAddressCopyWith<_$_EmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
