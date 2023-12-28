part of '../controller.dart';

@freezed
sealed class SearchState with _$SearchState {
  factory SearchState({
    @Default(0) int currentIndex,
    @Default([]) List<ProductElement> products,
    @Default(false) bool hasReachEnd,
  }) = _SearchState;
}
