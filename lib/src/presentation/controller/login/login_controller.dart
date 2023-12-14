part of '../controller.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  Future<LoginState> build() async {
    return const LoginInitial();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    final token = ref.watch(localRepositoryProvider).getToken();
    if (token == null) {
      state = const AsyncValue.data(LoginUnauthenticated());
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
    }).onError(ref.read(errorControllerProvider.notifier).onError);
  }

  Future<void> logout() async {
    await ref.watch(localRepositoryProvider).removeToken();
    state = const AsyncValue.data(LoginInitial());
  }

  bool isValid({required String username, required String password}) {
    return username.isNotEmpty && password.isNotEmpty;
  }
}
