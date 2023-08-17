import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
part 'users_entities.freezed.dart';
part 'users_entities.g.dart';

@freezed
class UsersEntities with _$UsersEntities {

  factory UsersEntities({
    @Default([]) List<User> users,
  }) = _UsersEntities;

  factory UsersEntities.fromJson(Map<String, dynamic> json) => _$UsersEntitiesFromJson(json);
}
