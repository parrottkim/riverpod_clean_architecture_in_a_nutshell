part of '../model.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String token,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
class DecodedToken with _$DecodedToken {
  const factory DecodedToken({
    required int id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String gender,
    required String image,
    required int iat,
    required int exp,
  }) = _DecodedToken;

  factory DecodedToken.fromJson(Map<String, dynamic> json) =>
      _$DecodedTokenFromJson(json);
}
