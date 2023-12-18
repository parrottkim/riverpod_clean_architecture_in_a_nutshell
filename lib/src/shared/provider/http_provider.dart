part of '../provider.dart';

@riverpod
Dio http(HttpRef ref) {
  final options = BaseOptions(
    baseUrl: 'https://fakestoreapi.com/',
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    connectTimeout: const Duration(milliseconds: 3000),
    receiveTimeout: const Duration(milliseconds: 3000),
  );
  return Dio(options)
    ..interceptors.addAll([
      ref.watch(authorizedInterceptorsProvider),
    ]);
}

@riverpod
InterceptorsWrapper authorizedInterceptors(AuthorizedInterceptorsRef ref) {
  return InterceptorsWrapper(
    onRequest: (options, handler) => handler.next(options),
    onResponse: (options, handler) => handler.next(options),
  );
}
