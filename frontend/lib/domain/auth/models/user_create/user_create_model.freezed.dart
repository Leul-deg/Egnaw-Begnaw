// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCreateModel _$UserCreateModelFromJson(Map<String, dynamic> json) {
  return _UserCreateModel.fromJson(json);
}

/// @nodoc
mixin _$UserCreateModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateModelCopyWith<UserCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateModelCopyWith<$Res> {
  factory $UserCreateModelCopyWith(
          UserCreateModel value, $Res Function(UserCreateModel) then) =
      _$UserCreateModelCopyWithImpl<$Res, UserCreateModel>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      EmailAddress email,
      Password password,
      String phoneNumber});
}

/// @nodoc
class _$UserCreateModelCopyWithImpl<$Res, $Val extends UserCreateModel>
    implements $UserCreateModelCopyWith<$Res> {
  _$UserCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateModelCopyWith<$Res>
    implements $UserCreateModelCopyWith<$Res> {
  factory _$$_UserCreateModelCopyWith(
          _$_UserCreateModel value, $Res Function(_$_UserCreateModel) then) =
      __$$_UserCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      EmailAddress email,
      Password password,
      String phoneNumber});
}

/// @nodoc
class __$$_UserCreateModelCopyWithImpl<$Res>
    extends _$UserCreateModelCopyWithImpl<$Res, _$_UserCreateModel>
    implements _$$_UserCreateModelCopyWith<$Res> {
  __$$_UserCreateModelCopyWithImpl(
      _$_UserCreateModel _value, $Res Function(_$_UserCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_UserCreateModel(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCreateModel implements _UserCreateModel {
  const _$_UserCreateModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber});

  factory _$_UserCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserCreateModelFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'UserCreateModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreateModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, email, password, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateModelCopyWith<_$_UserCreateModel> get copyWith =>
      __$$_UserCreateModelCopyWithImpl<_$_UserCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCreateModelToJson(
      this,
    );
  }
}

abstract class _UserCreateModel implements UserCreateModel {
  const factory _UserCreateModel(
      {required final String firstName,
      required final String lastName,
      required final EmailAddress email,
      required final Password password,
      required final String phoneNumber}) = _$_UserCreateModel;

  factory _UserCreateModel.fromJson(Map<String, dynamic> json) =
      _$_UserCreateModel.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateModelCopyWith<_$_UserCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
