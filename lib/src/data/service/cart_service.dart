part of '../service.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;

  @POST('carts/user/{id}')
  Future<Cart> getCartItems({@Body() required int id});
}
