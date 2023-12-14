part of '../controller.dart';

@freezed
class ErrorState with _$ErrorState {
  const factory ErrorState.initial() = ErrorInitial;
  const factory ErrorState.notify({
    int? code,
    required String message,
    Exception? exception,
  }) = ErrorNotify;
}
