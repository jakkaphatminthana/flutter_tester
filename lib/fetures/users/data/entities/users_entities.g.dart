// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersEntities _$$_UsersEntitiesFromJson(Map<String, dynamic> json) =>
    _$_UsersEntities(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UsersEntitiesToJson(_$_UsersEntities instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
