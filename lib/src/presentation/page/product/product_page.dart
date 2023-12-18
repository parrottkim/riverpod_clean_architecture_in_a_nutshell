import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_list.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: switch (state) {
        AsyncData(:final value) => ProductList(product: value.product),
        _ => _loading(),
      },
    );
  }

  Widget _loading() {
    return Center(
      child: Logo(
        size: 20.0,
        isLoading: true,
        backgroundColor: KeyColor.neutral.tone(70),
        iconColor: KeyColor.neutral.tone(70),
      ),
    );
  }
}
