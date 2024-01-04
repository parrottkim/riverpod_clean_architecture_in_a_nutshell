import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/product/product_screen.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/widget/chip.dart';

class ProductTabBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const ProductTabBarWidget({super.key});

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
  Size get preferredSize => const Size.fromHeight(ProductScreen.bottomHeight);
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
      initialIndex: ref.watch(categoryControllerProvider).value!.selectedIndex,
      initialLength: items.length,
      vsync: useSingleTickerProvider(),
    );

    ref.listen<AsyncValue<CategoryState>>(categoryControllerProvider, (_, state) {
      if (state.value != null) {
        tabController.animateTo(state.value!.selectedIndex);
      }
    });

    return TabBar(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      controller: tabController,
      isScrollable: true,
      automaticIndicatorColorAdjustment: false,
      indicatorColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: double.minPositive,
      tabAlignment: TabAlignment.start,
      splashBorderRadius: BorderRadius.circular(20.0),
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) => states.contains(MaterialState.focused) ? null : Colors.transparent,
      ),
      tabs: List.generate(
        items.length,
        (index) => CategoryListItem(
          tabController: tabController,
          item: items[index],
          selectedIndex: selectedIndex,
          index: index,
        ),
      ),
    );
  }
}

class CategoryListItem extends ConsumerWidget {
  final TabController tabController;
  final Category item;
  final int index;
  final int selectedIndex;

  const CategoryListItem({
    super.key,
    required this.tabController,
    required this.item,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomChip(
      onTap: () {
        ref.read(categoryControllerProvider.notifier).changeIndex(index);
        tabController.animateTo(index);
      },
      borderColor: selectedIndex == index
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.outline.withOpacity(0.5),
      backgroundColor: selectedIndex == index
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.surface,
      child: Text(
        item.name,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: selectedIndex == index ? FontWeight.w700 : FontWeight.w400,
              color: selectedIndex == index
                  ? Theme.of(context).colorScheme.onInverseSurface
                  : Theme.of(context).colorScheme.outline,
            ),
      ),
    );
  }
}
