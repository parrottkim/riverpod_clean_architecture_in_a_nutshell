part of '../repository.dart';

abstract class ProductRepository {
  Future<List<String>> getCategoryList();

  Future<Product> getProductList({required int start, int limit = 10});

  Future<Product> getProductListWithCategory(
      {required String category, required int start, int limit = 10});

  Future<Product> searchProduct(
      {required String query, required int start, int limit = 10});
}
