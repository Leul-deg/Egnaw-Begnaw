// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserUpdateModel _$UserUpdateModelFromJson(Map<String, dynamic> json) {
  return _UserUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUpdateModelCopyWith<UserUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateModelCopyWith<$Res> {
  factory $UserUpdateModelCopyWith(
          UserUpdateModel value, $Res Function(UserUpdateModel) then) =
      _$UserUpdateModelCopyWithImpl<$Res, UserUpdateModel>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String phoneNumber});
}

/// @nodoc
class _$UserUpdateModelCopyWithImpl<$Res, $Val extends UserUpdateModel>
    implements $UserUpdateModelCopyWith<$Res> {
  _$UserUpdateModelCopyWithImpl(this._value, this._then);

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
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserUpdateModelCopyWith<$Res>
    implements $UserUpdateModelCopyWith<$Res> {
  factory _$$_UserUpdateModelCopyWith(
          _$_UserUpdateModel value, $Res Function(_$_UserUpdateModel) then) =
      __$$_UserUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String phoneNumber});
}

/// @nodoc
class __$$_UserUpdateModelCopyWithImpl<$Res>
    extends _$UserUpdateModelCopyWithImpl<$Res, _$_UserUpdateModel>
    implements _$$_UserUpdateModelCopyWith<$Res> {
  __$$_UserUpdateModelCopyWithImpl(
      _$_UserUpdateModel _value, $Res Function(_$_UserUpdateModel) _then)
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
    return _then(_$_UserUpdateModel(
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
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserUpdateModel implements _UserUpdateModel {
  const _$_UserUpdateModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber});

  factory _$_UserUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserUpdateModelFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'UserUpdateModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateModel &&
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
  _$$_UserUpdateModelCopyWith<_$_UserUpdateModel> get copyWith =>
      __$$_UserUpdateModelCopyWithImpl<_$_UserUpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserUpdateModelToJson(
      this,
    );
  }
}

abstract class _UserUpdateModel implements UserUpdateModel {
  const factory _UserUpdateModel(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String password,
      required final String phoneNumber}) = _$_UserUpdateModel;

  factory _UserUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_UserUpdateModel.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_UserUpdateModelCopyWith<_$_UserUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
