part of '../controller.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.unauthenticated({
    @Default(LoginRequest.empty) LoginRequest request,
  }) = LoginUnauthenticated;
  const factory LoginState.authenticated({
    required User user,
  }) = LoginAuthenticated;
  const factory LoginState.invalid() = LoginInvalid;
}
