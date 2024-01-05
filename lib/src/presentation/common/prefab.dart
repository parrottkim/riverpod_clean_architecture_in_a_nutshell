import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';

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
      keyword: 'Phone',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      keyword: 'Macbook',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      keyword: 'Shirts',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      keyword: 'Sunglasses',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      keyword: 'Watch',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      keyword: 'Ring',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      keyword: 'Perfume',
      type: PopularKeywordType.fresh,
    ),
    PopularKeyword(
      keyword: 'Motorcycle',
      type: PopularKeywordType.down,
    ),
    PopularKeyword(
      keyword: 'Tops',
      type: PopularKeywordType.up,
    ),
    PopularKeyword(
      keyword: 'Lamp',
      type: PopularKeywordType.fresh,
    ),
  ];
}
