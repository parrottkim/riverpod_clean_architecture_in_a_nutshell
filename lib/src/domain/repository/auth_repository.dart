part of 'repository.dart';

abstract class AuthRepository {
  Future<Token> login({required LoginRequest request});

  Future<User> get({required int id});
}
