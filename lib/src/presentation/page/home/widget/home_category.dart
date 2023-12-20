import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';

class HomeCategory extends ConsumerWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryControllerProvider);

    return switch (state) {
      AsyncData(:final value) => CategoryList(items: value.categories),
      _ => Container(),
    };
  }
}

class CategoryList extends StatelessWidget {
  final List<Category> items;

  const CategoryList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Categories',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 8.0),
        StaggeredGridView.countBuilder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          crossAxisCount: 2, //as p
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 8.0,
          itemCount: items.length,
          itemBuilder: ( context,  index) =>
              CategoryListItem(index: index, item: items[index]),
          staggeredTileBuilder: ( index) =>
              index == 0 ? const StaggeredTile.fit(2) : new StaggeredTile.fit(1),
        ),
      ],
    );
  }
}

class CategoryListItem extends ConsumerWidget {
  final int index;
  final Category item;

  const CategoryListItem({
    super.key,
    required this.index,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(dashboardControllerProvider.notifier).changeIndex(0);
        ref.read(categoryControllerProvider.notifier).changeIndex(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Ink(
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/${item.tag}.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            item.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
