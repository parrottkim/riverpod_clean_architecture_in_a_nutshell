part of '../controller.dart';

@freezed
sealed class ProductState with _$ProductState {
  factory ProductState({
    @Default(0) int currentIndex,
    @Default([]) List<Product> products,
    @Default(false) bool hasReachEnd,
  }) = _PostState;
}
