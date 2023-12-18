part of '../model.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const LoginRequest._();
  const factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  static const empty = LoginRequest(username: '', password: '');

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required Address address,
    required int id,
    required String email,
    required String username,
    required String password,
    required Name name,
    required String phone,
    @JsonKey(name: '__v') required int v,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required Geolocation geolocation,
    required String city,
    required String street,
    required int number,
    required String zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Geolocation with _$Geolocation {
  const factory Geolocation({
    required String lat,
    required String long,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) => _$GeolocationFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String firstname,
    required String lastname,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
