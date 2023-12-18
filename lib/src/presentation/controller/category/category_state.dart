part of '../controller.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(0) int selectedIndex,
    required List<Category> categories,
  }) = _CategoryState;
}
