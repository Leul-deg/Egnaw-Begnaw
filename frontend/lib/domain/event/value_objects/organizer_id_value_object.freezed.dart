// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_id_value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizerId _$OrganizerIdFromJson(Map<String, dynamic> json) {
  return _OrganizerId.fromJson(json);
}

/// @nodoc
mixin _$OrganizerId {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizerIdCopyWith<OrganizerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerIdCopyWith<$Res> {
  factory $OrganizerIdCopyWith(
          OrganizerId value, $Res Function(OrganizerId) then) =
      _$OrganizerIdCopyWithImpl<$Res, OrganizerId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$OrganizerIdCopyWithImpl<$Res, $Val extends OrganizerId>
    implements $OrganizerIdCopyWith<$Res> {
  _$OrganizerIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrganizerIdCopyWith<$Res>
    implements $OrganizerIdCopyWith<$Res> {
  factory _$$_OrganizerIdCopyWith(
          _$_OrganizerId value, $Res Function(_$_OrganizerId) then) =
      __$$_OrganizerIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_OrganizerIdCopyWithImpl<$Res>
    extends _$OrganizerIdCopyWithImpl<$Res, _$_OrganizerId>
    implements _$$_OrganizerIdCopyWith<$Res> {
  __$$_OrganizerIdCopyWithImpl(
      _$_OrganizerId _value, $Res Function(_$_OrganizerId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_OrganizerId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizerId with DiagnosticableTreeMixin implements _OrganizerId {
  const _$_OrganizerId({required this.value});

  factory _$_OrganizerId.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizerIdFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizerId(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizerId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerId &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerIdCopyWith<_$_OrganizerId> get copyWith =>
      __$$_OrganizerIdCopyWithImpl<_$_OrganizerId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizerIdToJson(
      this,
    );
  }
}

abstract class _OrganizerId implements OrganizerId {
  const factory _OrganizerId({required final String value}) = _$_OrganizerId;

  factory _OrganizerId.fromJson(Map<String, dynamic> json) =
      _$_OrganizerId.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizerIdCopyWith<_$_OrganizerId> get copyWith =>
      throw _privateConstructorUsedError;
}
