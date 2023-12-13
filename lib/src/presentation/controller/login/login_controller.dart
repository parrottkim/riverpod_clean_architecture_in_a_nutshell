part of '../controller.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  Future<LoginState> build() async {
    return LoginInitial();
  }

  Future<void> init() async {
    final token = ref.watch(localRepositoryProvider).getToken();

    print(token);

    if (token == null) {
      state = AsyncValue.data(LoginUnauthenticated());
    } else {
      final user = await ref.watch(authRepositoryProvider).get(id: token.id);
      state = AsyncValue.data(LoginAuthenticated(user: user));
    }
  }

  Future<void> login({required LoginRequest request}) async {
    await ref.watch(authRepositoryProvider).login(request: request).then((value) async {
      await ref.watch(localRepositoryProvider).setToken(token: value);
      final user = await ref.watch(authRepositoryProvider).get(id: value.id);
      state = AsyncValue.data(LoginAuthenticated(user: user));
    }).onError((error, stackTrace) {
      print(stackTrace);
      state = AsyncValue.data(LoginFailed());
    });
  }

  Future<void> logout() async {
    await ref.watch(localRepositoryProvider).removeToken();
    state = AsyncValue.data(LoginInitial());
  }

  bool isValid({required String username, required String password}) {
    return username.isNotEmpty && password.isNotEmpty;
  }
}
