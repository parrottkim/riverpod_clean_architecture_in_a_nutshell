part of '../controller.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial({
    @Default([]) List<String> recentKeywords,
    @Default('') String currentKeyword,
  }) = SearchInitial;
  const factory SearchState.completed({
    @Default([]) List<String> recentKeywords,
    @Default('') String currentKeyword,
    required List<ProductElement> results,
  }) = SearchCompleted;
}
