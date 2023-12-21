part of '../source.dart';

class CartDataSource implements CartRepository {
  final CartService _service;

  CartDataSource({required CartService service}) : _service = service;

  @override
  Future<Cart> getCartList({required int id}) => _service.getCartItems(id: id);
}

@riverpod
CartRepository cartRepository(CartRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return CartDataSource(service: CartService(client));
}
