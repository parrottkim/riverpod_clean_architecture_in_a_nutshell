part of '../controller.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(0) int currentIndex,
    required List<Category> categories,
  }) = _CategoryState;
}
