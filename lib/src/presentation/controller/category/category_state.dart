part of '../controller.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(0) int currentIndex,
    required List<String> categories,
  }) = _CategoryState;
}
