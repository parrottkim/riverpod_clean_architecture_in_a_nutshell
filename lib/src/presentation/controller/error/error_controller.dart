part of '../controller.dart';

@riverpod
class ErrorController extends _$ErrorController {
  @override
  ErrorState build() {
    return ErrorInitial();
  }

  FutureOr<Null> onError(Object error, StackTrace stackTrace) async {
    if (error is Exception) {
      await throwException(exception: error, trace: stackTrace);
    } else if (error is Error) {
      // TODO: handle Error
    } else {
      // TODO: handle others
    }
  }

  Future<void> throwException({required Exception exception, StackTrace? trace}) async {
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.connectionError:
          state = ErrorNotify(message: 'connection_error', exception: exception);
        case DioExceptionType.connectionTimeout:
          state = ErrorNotify(message: 'connection_timeout', exception: exception);
        case DioExceptionType.sendTimeout:
          state = ErrorNotify(message: 'send_timeout', exception: exception);
        case DioExceptionType.receiveTimeout:
          state = ErrorNotify(message: 'receive_timeout', exception: exception);
        case DioExceptionType.badCertificate:
          state = ErrorNotify(message: 'bad_certificate', exception: exception);
        case DioExceptionType.badResponse:
          // TODO: Send to Firebase Crashlytics
          final data = exception.response?.data;
          switch (exception.response?.statusCode) {}
          state = ErrorNotify(
              code: exception.response?.statusCode,
              message: '${exception.response?.statusCode} ${data['message']}',
              exception: exception);
        case DioExceptionType.cancel:
          break;
        case DioExceptionType.unknown:
          break;
      }
    }
    print(state);
  }
}
