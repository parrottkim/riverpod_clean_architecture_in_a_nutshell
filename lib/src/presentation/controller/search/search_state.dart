part of '../controller.dart';

@freezed
sealed class SearchState with _$SearchState {
  factory SearchState({
    required String query,
    @Default(0) int currentIndex,
    @Default([]) List<ProductElement> products,
    @Default(false) bool hasReachEnd,
  }) = _SearchState;
}
