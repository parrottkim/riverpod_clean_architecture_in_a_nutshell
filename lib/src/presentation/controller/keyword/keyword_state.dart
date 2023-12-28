part of '../controller.dart';

@freezed
sealed class KeywordState with _$KeywordState {
  const factory KeywordState.initial({
    @Default([]) List<Keyword> keywords,
  }) = KeywordInitial;
  const factory KeywordState.searched({
    @Default([]) List<Keyword> keywords,
  }) = KeywordSearched;
}
