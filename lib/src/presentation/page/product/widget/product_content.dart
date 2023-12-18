import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductContent extends ConsumerWidget {
  const ProductContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productControllerProvider);
    return switch (product) {
      AsyncData(:final value) => ProductList(items: value.products),
      _ => _loading(),
    };
  }

  Widget _loading() {
    return Center(
      child: Logo(
        size: 20.0,
        isLoading: true,
        borderColor: KeyColor.neutral.tone(70),
        iconColor: KeyColor.neutral.tone(70),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> items;

  const ProductList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      crossAxisCount: 2,
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 8.0,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) =>
          ProductListItem(item: items[index]),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
    );
  }
}

class ProductListItem extends StatelessWidget {
  final Product item;

  const ProductListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Ink(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: AspectRatio(
                aspectRatio: 1,
                child: Ink.image(
                  image: NetworkImage(item.image),
                ),
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              '\$${item.price}',
            ),
          ],
        ),
      ),
    );
  }
}
