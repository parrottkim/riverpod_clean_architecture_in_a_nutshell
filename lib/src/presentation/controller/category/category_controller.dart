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
    for (var category in categories) {
      list.add(Category(
        tag: category,
        name: category.replaceAllMapped(RegExp(r'\b\w'), (Match match) {
          return match.group(0)!.toUpperCase();
        }).replaceAll(RegExp(r'-'), ' '),
      ));
    }

    return CategoryState(categories: list);
  }
}
