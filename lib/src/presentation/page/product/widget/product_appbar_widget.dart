import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/product_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_searchbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_tabbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductAppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const ProductAppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomAppBar(
      title: const ProductSearchBarWidget(),
      actions: [
        InkWell(
          onTap: () {},
          customBorder: const CircleBorder(),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ),
      ],
      bottom: const ProductTabBarWidget(),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + ProductPage.bottomHeight);
}
