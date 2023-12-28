import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/product_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_tabbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductAppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const ProductAppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomAppBar(
      title: InkWell(
        onTap: () => context.go('${Routes.product}/${Routes.search}'),
        borderRadius: BorderRadius.circular(8.0),
        child: IgnorePointer(
          child: OutlinedTextField(
            prefixIcon: Icons.search,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            hintText: Intl.message('product_hint'),
          ),
        ),
      ),
      actions: const [
        CartIconButton(),
      ],
      bottom: const ProductTabBarWidget(),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + ProductPage.bottomHeight);
}
