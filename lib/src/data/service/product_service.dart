part of '../service.dart';

@RestApi()
abstract class ProductService {
  factory ProductService(Dio dio, {String baseUrl}) = _ProductService;

  @GET('products/categories')
  Future<List<String>> getCategoryList();

  @GET('products')
  Future<List<Product>> getProductList({
    @Query('start') required int start,
    @Query('limit') required int limit,
  });

  @GET('products/category/{category}')
  Future<List<Product>> getProductListWithCategory({
    @Path() required String category,
    @Query('start') required int start,
    @Query('limit') required int limit,
  });
}
