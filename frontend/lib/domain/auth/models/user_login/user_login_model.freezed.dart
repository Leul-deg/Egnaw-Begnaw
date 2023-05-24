// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLoginModel _$UserLoginModelFromJson(Map<String, dynamic> json) {
  return _UserLoginModel.fromJson(json);
}

/// @nodoc
mixin _$UserLoginModel {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginModelCopyWith<UserLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginModelCopyWith<$Res> {
  factory $UserLoginModelCopyWith(
          UserLoginModel value, $Res Function(UserLoginModel) then) =
      _$UserLoginModelCopyWithImpl<$Res, UserLoginModel>;
  @useResult
  $Res call({EmailAddress email, Password password});
}

/// @nodoc
class _$UserLoginModelCopyWithImpl<$Res, $Val extends UserLoginModel>
    implements $UserLoginModelCopyWith<$Res> {
  _$UserLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLoginModelCopyWith<$Res>
    implements $UserLoginModelCopyWith<$Res> {
  factory _$$_UserLoginModelCopyWith(
          _$_UserLoginModel value, $Res Function(_$_UserLoginModel) then) =
      __$$_UserLoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailAddress email, Password password});
}

/// @nodoc
class __$$_UserLoginModelCopyWithImpl<$Res>
    extends _$UserLoginModelCopyWithImpl<$Res, _$_UserLoginModel>
    implements _$$_UserLoginModelCopyWith<$Res> {
  __$$_UserLoginModelCopyWithImpl(
      _$_UserLoginModel _value, $Res Function(_$_UserLoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_UserLoginModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLoginModel implements _UserLoginModel {
  const _$_UserLoginModel({required this.email, required this.password});

  factory _$_UserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserLoginModelFromJson(json);

  @override
  final EmailAddress email;
  @override
  final Password password;

  @override
  String toString() {
    return 'UserLoginModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLoginModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginModelCopyWith<_$_UserLoginModel> get copyWith =>
      __$$_UserLoginModelCopyWithImpl<_$_UserLoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLoginModelToJson(
      this,
    );
  }
}

abstract class _UserLoginModel implements UserLoginModel {
  const factory _UserLoginModel(
      {required final EmailAddress email,
      required final Password password}) = _$_UserLoginModel;

  factory _UserLoginModel.fromJson(Map<String, dynamic> json) =
      _$_UserLoginModel.fromJson;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserLoginModelCopyWith<_$_UserLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
