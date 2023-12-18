part of '../model.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String tag,
    required String name,
  }) = _Category;
}
