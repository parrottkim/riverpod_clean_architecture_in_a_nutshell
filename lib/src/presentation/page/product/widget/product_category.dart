import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';

class ProductCategory extends ConsumerWidget {
  const ProductCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryControllerProvider);

    return switch (state) {
      AsyncData(:final value) => CategoryList(
          items: value.categories,
          selectedIndex: value.selectedIndex,
        ),
      _ => Container(),
    };
  }
}

class CategoryList extends StatelessWidget {
  final List<Category> items;
  final int selectedIndex;

  const CategoryList({
    super.key,
    required this.items,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: items.length,
        itemBuilder: (context, index) => CategoryListItem(
            item: items[index], index: index, selectedIndex: selectedIndex),
        separatorBuilder: (context, index) => SizedBox(width: 4.0),
      ),
    );
  }
}

class CategoryListItem extends ConsumerWidget {
  final Category item;
  final int index;
  final int selectedIndex;

  const CategoryListItem({
    super.key,
    required this.item,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
            color: selectedIndex == index
                ? Colors.transparent
                : Theme.of(context).colorScheme.outline.withOpacity(0.5)),
        color: selectedIndex == index
            ? Theme.of(context).colorScheme.onSurface
            : Theme.of(context).colorScheme.surface,
      ),
      child: InkWell(
        onTap: () => ref.read(categoryControllerProvider.notifier).changeIndex(index),
        borderRadius: BorderRadius.circular(20.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          child: Text(
            item.name,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: selectedIndex == index ? FontWeight.w700 : FontWeight.w400,
                  color: selectedIndex == index
                      ? Theme.of(context).colorScheme.onInverseSurface
                      : Theme.of(context).colorScheme.outline,
                ),
          ),
        ),
      ),
    );
  }
}
