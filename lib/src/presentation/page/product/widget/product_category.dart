import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';

class ProductCategory extends ConsumerWidget implements PreferredSizeWidget {
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

  @override
  Size get preferredSize => Size.fromHeight(48.0);
}

class CategoryList extends HookConsumerWidget {
  final List<Category> items;
  final int selectedIndex;

  const CategoryList({
    super.key,
    required this.items,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
        initialIndex: 0, initialLength: items.length, vsync: useSingleTickerProvider());

    return TabBar(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
      controller: tabController,
      isScrollable: true,
      automaticIndicatorColorAdjustment: false,
      indicatorColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: double.minPositive,
      tabAlignment: TabAlignment.start,
      splashBorderRadius: BorderRadius.circular(20.0),
      // splashFactory: NoSplash.splashFactory,
      // overlayColor: MaterialStateProperty.resolveWith<Color?>(
      //   (Set<MaterialState> states) {
      //     return states.contains(MaterialState.focused) ? null : Colors.transparent;
      //   },
      // ),
      onTap: (index) => ref.read(categoryControllerProvider.notifier).changeIndex(index),
      tabs: List.generate(
        items.length,
        (index) => CategoryListItem(
          item: items[index],
          selectedIndex: selectedIndex,
          index: index,
        ),
      ),
    );

    // return SizedBox(
    //   height: 32.0,
    //   child: ListView.separated(
    //     shrinkWrap: true,
    //     scrollDirection: Axis.horizontal,
    //     padding: EdgeInsets.symmetric(horizontal: 16.0),
    //     itemCount: items.length,
    //     itemBuilder: (context, index) => CategoryListItem(
    //         item: items[index], index: index, selectedIndex: selectedIndex),
    //     separatorBuilder: (context, index) => SizedBox(width: 4.0),
    //   ),
    // );
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
    );
  }
}
