part of '../controller.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return const LoginInitial();
  }

  Future<void> init() async {
    final token = ref.watch(localRepositoryProvider).getToken();

    if (token == null) {
      state = const LoginUnauthenticated();
    } else {
      print(token.token);
      final decodedToken = DecodedToken.fromJson(decodeJwt(token.token));
      await ref.watch(authRepositoryProvider).get(id: decodedToken.id).then((value) {
        state = LoginAuthenticated(user: value);
      }).onError(ref.read(errorControllerProvider.notifier).onError);
    }
  }

  Future<void> login({required LoginRequest request}) async {
    await ref.watch(authRepositoryProvider).login(request: request).then((value) async {
      await ref.watch(localRepositoryProvider).setToken(token: value);
      final decodedToken = DecodedToken.fromJson(decodeJwt(value.token));
      final user = await ref.watch(authRepositoryProvider).get(id: decodedToken.id);
      state = LoginAuthenticated(user: user);
    }).onError(ref.read(errorControllerProvider.notifier).onError);
  }

  Future<void> logout() async {
    await ref.watch(localRepositoryProvider).removeToken();
    state = const LoginInitial();
  }

  bool isValid({required String username, required String password}) {
    return username.isNotEmpty && password.isNotEmpty;
  }
}
