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
