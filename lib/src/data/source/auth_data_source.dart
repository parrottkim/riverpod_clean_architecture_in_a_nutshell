part of 'source.dart';

class AuthDataSource implements AuthRepository {
  final AuthService _service;

  AuthDataSource({required AuthService service}) : _service = service;

  @override
  Future<Token> login({required LoginRequest request}) =>
      _service.login(request: request);

  @override
  Future<User> get({required int id}) => _service.get(id: id);
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return AuthDataSource(service: AuthService(client));
}
