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
    @JsonKey(name: 'sub') required int id,
    required String user,
    required int iat,
  }) = _DecodedToken;

  factory DecodedToken.fromJson(Map<String, dynamic> json) =>
      _$DecodedTokenFromJson(json);
}
