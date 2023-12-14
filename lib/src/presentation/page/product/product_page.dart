import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider);

    return Scaffold(
      body: switch (state) {
        AsyncData(:final value) => ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            itemCount: value.product.products.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {},
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    value.product.products[index].images[0],
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              title: Text(value.product.products[index].title),
              subtitle: Text(value.product.products[index].brand),
            ),
          ),
        _ => Logo(
            size: 20.0,
            isLoading: true,
            color: KeyColor.neutral.tone(70),
          ),
      },
    );
  }
}
