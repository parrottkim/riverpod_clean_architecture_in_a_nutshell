part of '../controller.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  Future<CategoryState> build() async {
    return _fetchData();
  }

  Future<CategoryState> _fetchData() async {
    final categories = await ref.watch(productRepositoryProvider).getCategoryList();

    final List<Category> list = [];
    list.add(Category(tag: 'all', name: 'All'));
    for (var category in categories) {
      list.add(Category(
        tag: category,
        name: category.replaceAllMapped(RegExp(r"\b(\w)|'(\w)"), (Match match) {
          return match.group(1) != null
              ? match.group(0)!.toUpperCase()
              : "'${match.group(2)!.toLowerCase()}";
        }),
      ));
    }

    return CategoryState(categories: list);
  }

  void changeIndex(int index) {
    final value = state.valueOrNull;

    if (value != null) {
      state = AsyncValue.data(value.copyWith(selectedIndex: index));
    }
  }
}
