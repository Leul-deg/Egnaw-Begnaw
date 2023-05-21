// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizerModel _$OrganizerModelFromJson(Map<String, dynamic> json) {
  return _OrganizerModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizerModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizerModelCopyWith<OrganizerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerModelCopyWith<$Res> {
  factory $OrganizerModelCopyWith(
          OrganizerModel value, $Res Function(OrganizerModel) then) =
      _$OrganizerModelCopyWithImpl<$Res, OrganizerModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String password,
      String createdAt});
}

/// @nodoc
class _$OrganizerModelCopyWithImpl<$Res, $Val extends OrganizerModel>
    implements $OrganizerModelCopyWith<$Res> {
  _$OrganizerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizerModelCopyWith<$Res>
    implements $OrganizerModelCopyWith<$Res> {
  factory _$$_OrganizerModelCopyWith(
          _$_OrganizerModel value, $Res Function(_$_OrganizerModel) then) =
      __$$_OrganizerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String password,
      String createdAt});
}

/// @nodoc
class __$$_OrganizerModelCopyWithImpl<$Res>
    extends _$OrganizerModelCopyWithImpl<$Res, _$_OrganizerModel>
    implements _$$_OrganizerModelCopyWith<$Res> {
  __$$_OrganizerModelCopyWithImpl(
      _$_OrganizerModel _value, $Res Function(_$_OrganizerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? createdAt = null,
  }) {
    return _then(_$_OrganizerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizerModel implements _OrganizerModel {
  const _$_OrganizerModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.createdAt});

  factory _$_OrganizerModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizerModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'OrganizerModel(id: $id, name: $name, email: $email, password: $password, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, password, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerModelCopyWith<_$_OrganizerModel> get copyWith =>
      __$$_OrganizerModelCopyWithImpl<_$_OrganizerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizerModelToJson(
      this,
    );
  }
}

abstract class _OrganizerModel implements OrganizerModel {
  const factory _OrganizerModel(
      {required final String id,
      required final String name,
      required final String email,
      required final String password,
      required final String createdAt}) = _$_OrganizerModel;

  factory _OrganizerModel.fromJson(Map<String, dynamic> json) =
      _$_OrganizerModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerModelCopyWith<_$_OrganizerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
