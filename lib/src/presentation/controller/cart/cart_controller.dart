part of '../controller.dart';

@riverpod
class CartController extends _$CartController {
  @override
  Future<CartState> build({required int id}) {
    return _fetchData(id: id);
  }

  Future<CartState> _fetchData({required int id}) async {
    final cart = await ref.watch(cartRepositoryProvider).getCartList(id: id);
    print(cart.carts[0].products);
    return CartState(products: cart.carts[0].products);
  }
}
