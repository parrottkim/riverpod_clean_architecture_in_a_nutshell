// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartControllerHash() => r'7863c5faa230d2023827f5cf2a0cfc1f3d272663';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CartController
    extends BuildlessAutoDisposeAsyncNotifier<CartState> {
  late final int id;

  FutureOr<CartState> build({
    required int id,
  });
}

/// See also [CartController].
@ProviderFor(CartController)
const cartControllerProvider = CartControllerFamily();

/// See also [CartController].
class CartControllerFamily extends Family<AsyncValue<CartState>> {
  /// See also [CartController].
  const CartControllerFamily();

  /// See also [CartController].
  CartControllerProvider call({
    required int id,
  }) {
    return CartControllerProvider(
      id: id,
    );
  }

  @override
  CartControllerProvider getProviderOverride(
    covariant CartControllerProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cartControllerProvider';
}

/// See also [CartController].
class CartControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CartController, CartState> {
  /// See also [CartController].
  CartControllerProvider({
    required int id,
  }) : this._internal(
          () => CartController()..id = id,
          from: cartControllerProvider,
          name: r'cartControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cartControllerHash,
          dependencies: CartControllerFamily._dependencies,
          allTransitiveDependencies:
              CartControllerFamily._allTransitiveDependencies,
          id: id,
        );

  CartControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<CartState> runNotifierBuild(
    covariant CartController notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(CartController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CartControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CartController, CartState>
      createElement() {
    return _CartControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CartControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CartControllerRef on AutoDisposeAsyncNotifierProviderRef<CartState> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CartControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CartController, CartState>
    with CartControllerRef {
  _CartControllerProviderElement(super.provider);

  @override
  int get id => (origin as CartControllerProvider).id;
}

String _$categoryControllerHash() =>
    r'38f682a346bc7a84e47df232e7423f5e003f388d';

/// See also [CategoryController].
@ProviderFor(CategoryController)
final categoryControllerProvider = AutoDisposeAsyncNotifierProvider<
    CategoryController, CategoryState>.internal(
  CategoryController.new,
  name: r'categoryControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoryControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CategoryController = AutoDisposeAsyncNotifier<CategoryState>;
String _$dashboardControllerHash() =>
    r'73522060ddbca1910ecf251c43ec27f9c3ffddaf';

/// See also [DashboardController].
@ProviderFor(DashboardController)
final dashboardControllerProvider =
    AutoDisposeNotifierProvider<DashboardController, int>.internal(
  DashboardController.new,
  name: r'dashboardControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dashboardControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DashboardController = AutoDisposeNotifier<int>;
String _$errorControllerHash() => r'6ffe00dfb1183062688c48dec4cfb5103b07e346';

/// See also [ErrorController].
@ProviderFor(ErrorController)
final errorControllerProvider =
    AutoDisposeNotifierProvider<ErrorController, ErrorState>.internal(
  ErrorController.new,
  name: r'errorControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$errorControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ErrorController = AutoDisposeNotifier<ErrorState>;
String _$keywordControllerHash() => r'a43bdb3da7943dae89965cefd13b09fe2cad4a43';

/// See also [KeywordController].
@ProviderFor(KeywordController)
final keywordControllerProvider =
    AutoDisposeNotifierProvider<KeywordController, KeywordState>.internal(
  KeywordController.new,
  name: r'keywordControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$keywordControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$KeywordController = AutoDisposeNotifier<KeywordState>;
String _$loginControllerHash() => r'981e57abdceba27db407b619f6ce1af6a09a4186';

/// See also [LoginController].
@ProviderFor(LoginController)
final loginControllerProvider =
    AutoDisposeNotifierProvider<LoginController, LoginState>.internal(
  LoginController.new,
  name: r'loginControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginController = AutoDisposeNotifier<LoginState>;
String _$productControllerHash() => r'95e539ec1bd583fd9a106f6d3c81db109e5a1c71';

/// See also [ProductController].
@ProviderFor(ProductController)
final productControllerProvider =
    AutoDisposeAsyncNotifierProvider<ProductController, ProductState>.internal(
  ProductController.new,
  name: r'productControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductController = AutoDisposeAsyncNotifier<ProductState>;
String _$searchControllerHash() => r'131619dfbbcb850085cc946e66bedac41558dc38';

abstract class _$SearchController
    extends BuildlessAutoDisposeAsyncNotifier<SearchState> {
  late final String query;

  FutureOr<SearchState> build(
    String query,
  );
}

/// See also [SearchController].
@ProviderFor(SearchController)
const searchControllerProvider = SearchControllerFamily();

/// See also [SearchController].
class SearchControllerFamily extends Family<AsyncValue<SearchState>> {
  /// See also [SearchController].
  const SearchControllerFamily();

  /// See also [SearchController].
  SearchControllerProvider call(
    String query,
  ) {
    return SearchControllerProvider(
      query,
    );
  }

  @override
  SearchControllerProvider getProviderOverride(
    covariant SearchControllerProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchControllerProvider';
}

/// See also [SearchController].
class SearchControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SearchController, SearchState> {
  /// See also [SearchController].
  SearchControllerProvider(
    String query,
  ) : this._internal(
          () => SearchController()..query = query,
          from: searchControllerProvider,
          name: r'searchControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchControllerHash,
          dependencies: SearchControllerFamily._dependencies,
          allTransitiveDependencies:
              SearchControllerFamily._allTransitiveDependencies,
          query: query,
        );

  SearchControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  FutureOr<SearchState> runNotifierBuild(
    covariant SearchController notifier,
  ) {
    return notifier.build(
      query,
    );
  }

  @override
  Override overrideWith(SearchController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchControllerProvider._internal(
        () => create()..query = query,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchController, SearchState>
      createElement() {
    return _SearchControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchControllerProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchControllerRef on AutoDisposeAsyncNotifierProviderRef<SearchState> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchController,
        SearchState> with SearchControllerRef {
  _SearchControllerProviderElement(super.provider);

  @override
  String get query => (origin as SearchControllerProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
