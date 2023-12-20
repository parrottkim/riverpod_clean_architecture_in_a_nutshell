part of '../controller.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  Future<CategoryState> build() async {
    return _fetchData();
  }

  Future<CategoryState> _fetchData() async {
    final categories = await ref.watch(productRepositoryProvider).getCategoryList();

    print(categories);

    final List<Category> list = [];
    list.add(Category(tag: 'all', name: 'All'));
    for (var category in categories) {
      list.add(
        Category(
          tag: category,
          name: category
              .replaceFirstMapped(
                RegExp(r'men'),
                (match) => "${match.group(0)}'",
              )
              .replaceAll('-', ' ')
              .replaceAllMapped(
                RegExp(r"\b\w"),
                (match) => match.group(0)!.toUpperCase(),
              )
              .replaceAllMapped(
                RegExp(r"'(\w)"),
                (match) => "'${match.group(1)!.toLowerCase()}",
              ),
        ),
      );
    }

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
