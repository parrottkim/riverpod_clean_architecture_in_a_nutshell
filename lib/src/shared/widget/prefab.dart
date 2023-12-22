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

  static const List<PopularKeyword> popularKeywordItems = [
    PopularKeyword(
      name: 'Phone',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      name: 'Macbook',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      name: 'Shirts',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      name: 'Sunglasses',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      name: 'Watch',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      name: 'Ring',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      name: 'Perfume',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      name: 'Motorcycle',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      name: 'Tops',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      name: 'Lamp',
      type: PopularKeywordType.fresh,
    ),
  ];
}
