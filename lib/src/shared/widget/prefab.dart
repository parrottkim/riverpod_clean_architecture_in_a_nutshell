part of '../widget.dart';

class WidgetPrefab {
  static const List<NavigationItem> navigationItems = [
    NavigationItem(
      unselectedIcon: Icons.widgets_outlined,
      selectedIcon: Icons.widgets,
      route: Routes.product,
      label: 'Products',
    ),
    NavigationItem(
      unselectedIcon: Icons.home_outlined,
      selectedIcon: Icons.home,
      route: Routes.home,
      label: 'Home',
    ),
    NavigationItem(
      unselectedIcon: Icons.person_outlined,
      selectedIcon: Icons.person,
      route: Routes.account,
      label: 'Account',
    )
  ];
}
