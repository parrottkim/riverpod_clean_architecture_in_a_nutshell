part of '../service.dart';

@RestApi()
abstract class ProductService {
  factory ProductService(Dio dio, {String baseUrl}) = _ProductService;

  @GET('products/categories')
  Future<List<String>> getCategoryList();

  @GET('products')
  Future<Product> getProductList({
    @Query('skip') required int start,
    @Query('limit') required int limit,
  });

  @GET('products/{id}')
  Future<ProductElement> getProductById({
    @Path() required int id,
  });

  @GET('products/category/{category}')
  Future<Product> getProductListWithCategory({
    @Path() required String category,
    @Query('skip') required int start,
    @Query('limit') required int limit,
  });

  @GET('product/search')
  Future<Product> searchProduct({
    @Query('q') required String query,
    @Query('skip') required int start,
    @Query('limit') required int limit,
  });
}
