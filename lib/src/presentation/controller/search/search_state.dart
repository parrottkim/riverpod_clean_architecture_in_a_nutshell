part of '../controller.dart';

abstract class SearchAbstractState {
  List<String> get recentKeywords;
  String get currentKeyword;
}

@freezed
class SearchState with _$SearchState {
  @Implements<SearchAbstractState>()
  const factory SearchState.initial({
    @Default([]) List<String> recentKeywords,
    @Default('') String currentKeyword,
    @Default([]) List<ProductElement> results,
  }) = SearchInitial;
}
