part of '../controller.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  Future<CategoryState> build() async {
    return _fetchData();
  }

  Future<CategoryState> _fetchData() async {
    final categories = await ref.watch(productRepositoryProvider).getCategoryList();

    final List<Category> list = [
      Category(
        tag: 'all',
        name: Intl.message('category_all'),
      )
    ];
    for (var category in categories) {
      list.add(
        Category(
          tag: category,
          name: Intl.message('category_${category.replaceAll('-', '_')}'),
        ),
      );
    }

    print(list);

    return CategoryState(categories: list);
  }

  void changeIndex(int index) {
    final value = state.valueOrNull;

    if (value != null) {
      if (value.selectedIndex == index) return;
      state = AsyncValue.data(value.copyWith(selectedIndex: index));
    }
  }
}
