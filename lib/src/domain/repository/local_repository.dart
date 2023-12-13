part of 'repository.dart';

abstract class LocalRepository {
  Token? getToken();

  Future<void> setToken({required Token token});

  Future<void> removeToken();
}
