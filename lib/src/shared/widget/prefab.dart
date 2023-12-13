part of 'widget.dart';

class WidgetPrefab {
  static const List<NavigationItem> navigationItems = [
    NavigationItem(
      unselectedIcon: Icons.home_outlined,
      selectedIcon: Icons.home,
      route: Routes.home,
      label: '홈',
    ),
    NavigationItem(
      unselectedIcon: Icons.person_outlined,
      selectedIcon: Icons.person,
      route: Routes.account,
      label: '계정',
    )
  ];
}
