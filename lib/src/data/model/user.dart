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
class Token with _$Token {
  const factory Token({
    required int id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String gender,
    required String image,
    required String token,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String maidenName,
    required int age,
    required String gender,
    required String email,
    required String phone,
    required String username,
    required String password,
    required DateTime birthDate,
    required String image,
    required String bloodGroup,
    required int height,
    required double weight,
    required String eyeColor,
    required Hair hair,
    required String domain,
    required String ip,
    required Address address,
    required String macAddress,
    required String university,
    required Bank bank,
    required Company company,
    required String ein,
    required String ssn,
    required String userAgent,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String address,
    required String city,
    required Coordinates coordinates,
    required String postalCode,
    required String state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double lat,
    required double lng,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

@freezed
class Bank with _$Bank {
  const factory Bank({
    required String cardExpire,
    required String cardNumber,
    required String cardType,
    required String currency,
    required String iban,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required Address address,
    required String department,
    required String name,
    required String title,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

@freezed
class Hair with _$Hair {
  const factory Hair({
    required String color,
    required String type,
  }) = _Hair;

  factory Hair.fromJson(Map<String, dynamic> json) => _$HairFromJson(json);
}
