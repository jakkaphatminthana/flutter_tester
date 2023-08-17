import 'package:freezed_annotation/freezed_annotation.dart';
import 'geo.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {

  const factory Address({
    @Default('') String street,
    @Default('') String suite,
    @Default('') String city,
    @Default('') String zipcode,
    @Default(Geo()) Geo geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
