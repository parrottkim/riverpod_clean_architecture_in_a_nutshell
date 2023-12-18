part of '../controller.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  Future<CategoryState> build() async {
    return _fetchData();
  }

  Future<CategoryState> _fetchData() async {
    final categories =
    await ref.watch(productRepositoryProvider).getCategoryList();
    print(categories);
    return CategoryState(categories: categories);
  }
}