// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersEntities _$UsersEntitiesFromJson(Map<String, dynamic> json) {
  return _UsersEntities.fromJson(json);
}

/// @nodoc
mixin _$UsersEntities {
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersEntitiesCopyWith<UsersEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEntitiesCopyWith<$Res> {
  factory $UsersEntitiesCopyWith(
          UsersEntities value, $Res Function(UsersEntities) then) =
      _$UsersEntitiesCopyWithImpl<$Res, UsersEntities>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class _$UsersEntitiesCopyWithImpl<$Res, $Val extends UsersEntities>
    implements $UsersEntitiesCopyWith<$Res> {
  _$UsersEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersEntitiesCopyWith<$Res>
    implements $UsersEntitiesCopyWith<$Res> {
  factory _$$_UsersEntitiesCopyWith(
          _$_UsersEntities value, $Res Function(_$_UsersEntities) then) =
      __$$_UsersEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$_UsersEntitiesCopyWithImpl<$Res>
    extends _$UsersEntitiesCopyWithImpl<$Res, _$_UsersEntities>
    implements _$$_UsersEntitiesCopyWith<$Res> {
  __$$_UsersEntitiesCopyWithImpl(
      _$_UsersEntities _value, $Res Function(_$_UsersEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_UsersEntities(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersEntities implements _UsersEntities {
  _$_UsersEntities({final List<User> users = const []}) : _users = users;

  factory _$_UsersEntities.fromJson(Map<String, dynamic> json) =>
      _$$_UsersEntitiesFromJson(json);

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersEntities(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersEntities &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersEntitiesCopyWith<_$_UsersEntities> get copyWith =>
      __$$_UsersEntitiesCopyWithImpl<_$_UsersEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersEntitiesToJson(
      this,
    );
  }
}

abstract class _UsersEntities implements UsersEntities {
  factory _UsersEntities({final List<User> users}) = _$_UsersEntities;

  factory _UsersEntities.fromJson(Map<String, dynamic> json) =
      _$_UsersEntities.fromJson;

  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_UsersEntitiesCopyWith<_$_UsersEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
