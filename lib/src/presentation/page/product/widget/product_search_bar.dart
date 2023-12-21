import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('${Routes.product}/${Routes.search}'),
      borderRadius: BorderRadius.circular(8.0),
      child: const IgnorePointer(
        child: OutlinedTextField(
          prefixIcon: Icons.search,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          hintText: 'Search products',
        ),
      ),
    );
  }
}
