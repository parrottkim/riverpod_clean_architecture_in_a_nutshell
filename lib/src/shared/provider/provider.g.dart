// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpHash() => r'd9676c92a6d972f9a3cbdeaea625fd98d07eab2f';

/// See also [http].
@ProviderFor(http)
final httpProvider = AutoDisposeProvider<Dio>.internal(
  http,
  name: r'httpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HttpRef = AutoDisposeProviderRef<Dio>;
String _$authorizedInterceptorsHash() =>
    r'e7227c0af9bdaa3acc99b0f70c56f3dd71d56c80';

/// See also [authorizedInterceptors].
@ProviderFor(authorizedInterceptors)
final authorizedInterceptorsProvider =
    AutoDisposeProvider<InterceptorsWrapper>.internal(
  authorizedInterceptors,
  name: r'authorizedInterceptorsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authorizedInterceptorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthorizedInterceptorsRef = AutoDisposeProviderRef<InterceptorsWrapper>;
String _$sharedPreferencesHash() => r'0924fb848ccdeb837f448bcb2b685bf4104dbd40';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = AutoDisposeProviderRef<SharedPreferences>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
