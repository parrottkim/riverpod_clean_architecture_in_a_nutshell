part of '../model.dart';

@freezed
class Keyword with _$Keyword {
  const factory Keyword({
    required String keyword,
    required DateTime date,
  }) = _Keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) => _$KeywordFromJson(json);
}
