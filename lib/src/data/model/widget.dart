part of '../model.dart';

@freezed
class NavigationItem with _$NavigationItem {
  const factory NavigationItem({
    required String route,
    required IconData unselectedIcon,
    required IconData selectedIcon,
    required String label,
  }) = _NavigationItem;
}

enum PopularKeywordType { fresh, up, down }

@freezed
class PopularKeyword with _$PopularKeyword {
  const factory PopularKeyword({
    required String keyword,
    required PopularKeywordType type,
  }) = _PopularKeyword;
}
