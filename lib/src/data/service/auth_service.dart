part of 'service.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('auth/login')
  Future<Token> login({@Body() required LoginRequest request});

  @GET('users/{id}')
  Future<User> get({@Path() required int id});
}
