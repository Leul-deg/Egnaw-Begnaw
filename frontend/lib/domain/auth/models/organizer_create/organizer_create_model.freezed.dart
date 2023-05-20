// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizerCreateModel _$OrganizerCreateModelFromJson(Map<String, dynamic> json) {
  return _OrganizerCreateModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizerCreateModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get organizationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizerCreateModelCopyWith<OrganizerCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerCreateModelCopyWith<$Res> {
  factory $OrganizerCreateModelCopyWith(OrganizerCreateModel value,
          $Res Function(OrganizerCreateModel) then) =
      _$OrganizerCreateModelCopyWithImpl<$Res, OrganizerCreateModel>;
  @useResult
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String organizationName});
}

/// @nodoc
class _$OrganizerCreateModelCopyWithImpl<$Res,
        $Val extends OrganizerCreateModel>
    implements $OrganizerCreateModelCopyWith<$Res> {
  _$OrganizerCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? organizationName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizerCreateModelCopyWith<$Res>
    implements $OrganizerCreateModelCopyWith<$Res> {
  factory _$$_OrganizerCreateModelCopyWith(_$_OrganizerCreateModel value,
          $Res Function(_$_OrganizerCreateModel) then) =
      __$$_OrganizerCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String organizationName});
}

/// @nodoc
class __$$_OrganizerCreateModelCopyWithImpl<$Res>
    extends _$OrganizerCreateModelCopyWithImpl<$Res, _$_OrganizerCreateModel>
    implements _$$_OrganizerCreateModelCopyWith<$Res> {
  __$$_OrganizerCreateModelCopyWithImpl(_$_OrganizerCreateModel _value,
      $Res Function(_$_OrganizerCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? organizationName = null,
  }) {
    return _then(_$_OrganizerCreateModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizerCreateModel implements _OrganizerCreateModel {
  const _$_OrganizerCreateModel(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.organizationName});

  factory _$_OrganizerCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizerCreateModelFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String organizationName;

  @override
  String toString() {
    return 'OrganizerCreateModel(email: $email, password: $password, firstName: $firstName, lastName: $lastName, organizationName: $organizationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerCreateModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, firstName, lastName, organizationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerCreateModelCopyWith<_$_OrganizerCreateModel> get copyWith =>
      __$$_OrganizerCreateModelCopyWithImpl<_$_OrganizerCreateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizerCreateModelToJson(
      this,
    );
  }
}

abstract class _OrganizerCreateModel implements OrganizerCreateModel {
  const factory _OrganizerCreateModel(
      {required final String email,
      required final String password,
      required final String firstName,
      required final String lastName,
      required final String organizationName}) = _$_OrganizerCreateModel;

  factory _OrganizerCreateModel.fromJson(Map<String, dynamic> json) =
      _$_OrganizerCreateModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get organizationName;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerCreateModelCopyWith<_$_OrganizerCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
