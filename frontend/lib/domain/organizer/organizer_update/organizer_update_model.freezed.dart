// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizerUpdateModel _$OrganizerUpdateModelFromJson(Map<String, dynamic> json) {
  return _OrganizerUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizerUpdateModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizerUpdateModelCopyWith<OrganizerUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerUpdateModelCopyWith<$Res> {
  factory $OrganizerUpdateModelCopyWith(OrganizerUpdateModel value,
          $Res Function(OrganizerUpdateModel) then) =
      _$OrganizerUpdateModelCopyWithImpl<$Res, OrganizerUpdateModel>;
  @useResult
  $Res call({String name, String email, String password, String id});
}

/// @nodoc
class _$OrganizerUpdateModelCopyWithImpl<$Res,
        $Val extends OrganizerUpdateModel>
    implements $OrganizerUpdateModelCopyWith<$Res> {
  _$OrganizerUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizerUpdateModelCopyWith<$Res>
    implements $OrganizerUpdateModelCopyWith<$Res> {
  factory _$$_OrganizerUpdateModelCopyWith(_$_OrganizerUpdateModel value,
          $Res Function(_$_OrganizerUpdateModel) then) =
      __$$_OrganizerUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password, String id});
}

/// @nodoc
class __$$_OrganizerUpdateModelCopyWithImpl<$Res>
    extends _$OrganizerUpdateModelCopyWithImpl<$Res, _$_OrganizerUpdateModel>
    implements _$$_OrganizerUpdateModelCopyWith<$Res> {
  __$$_OrganizerUpdateModelCopyWithImpl(_$_OrganizerUpdateModel _value,
      $Res Function(_$_OrganizerUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_$_OrganizerUpdateModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizerUpdateModel implements _OrganizerUpdateModel {
  const _$_OrganizerUpdateModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.id});

  factory _$_OrganizerUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizerUpdateModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String id;

  @override
  String toString() {
    return 'OrganizerUpdateModel(name: $name, email: $email, password: $password, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerUpdateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerUpdateModelCopyWith<_$_OrganizerUpdateModel> get copyWith =>
      __$$_OrganizerUpdateModelCopyWithImpl<_$_OrganizerUpdateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizerUpdateModelToJson(
      this,
    );
  }
}

abstract class _OrganizerUpdateModel implements OrganizerUpdateModel {
  const factory _OrganizerUpdateModel(
      {required final String name,
      required final String email,
      required final String password,
      required final String id}) = _$_OrganizerUpdateModel;

  factory _OrganizerUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_OrganizerUpdateModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerUpdateModelCopyWith<_$_OrganizerUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
