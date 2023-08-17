import 'address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {

  const factory User({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String username,
    @Default('') String email,
    @Default(Address()) Address address,
    @Default('') String phone,
    @Default('') String website,
    @Default(Company()) Company company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
