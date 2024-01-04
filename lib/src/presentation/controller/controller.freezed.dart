// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  List<CartProductElement> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartProductElement> products});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartProductElement> products});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CartStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductElement>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl({required final List<CartProductElement> products})
      : _products = products;

  final List<CartProductElement> _products;
  @override
  List<CartProductElement> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartState(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({required final List<CartProductElement> products}) =
      _$CartStateImpl;

  @override
  List<CartProductElement> get products;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call({int selectedIndex, List<Category> categories});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, List<Category> categories});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? categories = null,
  }) {
    return _then(_$CategoryStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {this.selectedIndex = 0, required final List<Category> categories})
      : _categories = categories;

  @override
  @JsonKey()
  final int selectedIndex;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryState(selectedIndex: $selectedIndex, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {final int selectedIndex,
      required final List<Category> categories}) = _$CategoryStateImpl;

  @override
  int get selectedIndex;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res, ErrorState>;
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res, $Val extends ErrorState>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorInitialImplCopyWith<$Res> {
  factory _$$ErrorInitialImplCopyWith(
          _$ErrorInitialImpl value, $Res Function(_$ErrorInitialImpl) then) =
      __$$ErrorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorInitialImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$ErrorInitialImpl>
    implements _$$ErrorInitialImplCopyWith<$Res> {
  __$$ErrorInitialImplCopyWithImpl(
      _$ErrorInitialImpl _value, $Res Function(_$ErrorInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorInitialImpl implements ErrorInitial {
  const _$ErrorInitialImpl();

  @override
  String toString() {
    return 'ErrorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ErrorInitial implements ErrorState {
  const factory ErrorInitial() = _$ErrorInitialImpl;
}

/// @nodoc
abstract class _$$ErrorNotifyImplCopyWith<$Res> {
  factory _$$ErrorNotifyImplCopyWith(
          _$ErrorNotifyImpl value, $Res Function(_$ErrorNotifyImpl) then) =
      __$$ErrorNotifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String message, Exception? exception});
}

/// @nodoc
class __$$ErrorNotifyImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$ErrorNotifyImpl>
    implements _$$ErrorNotifyImplCopyWith<$Res> {
  __$$ErrorNotifyImplCopyWithImpl(
      _$ErrorNotifyImpl _value, $Res Function(_$ErrorNotifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$ErrorNotifyImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorNotifyImpl implements ErrorNotify {
  const _$ErrorNotifyImpl({this.code, required this.message, this.exception});

  @override
  final int? code;
  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'ErrorState.notify(code: $code, message: $message, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotifyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotifyImplCopyWith<_$ErrorNotifyImpl> get copyWith =>
      __$$ErrorNotifyImplCopyWithImpl<_$ErrorNotifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) {
    return notify(code, message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) {
    return notify?.call(code, message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify(code, message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) {
    return notify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) {
    return notify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify(this);
    }
    return orElse();
  }
}

abstract class ErrorNotify implements ErrorState {
  const factory ErrorNotify(
      {final int? code,
      required final String message,
      final Exception? exception}) = _$ErrorNotifyImpl;

  int? get code;
  String get message;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$$ErrorNotifyImplCopyWith<_$ErrorNotifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KeywordState {
  List<Keyword> get keywords => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Keyword> keywords) initial,
    required TResult Function(List<Keyword> keywords) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Keyword> keywords)? initial,
    TResult? Function(List<Keyword> keywords)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Keyword> keywords)? initial,
    TResult Function(List<Keyword> keywords)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KeywordInitial value) initial,
    required TResult Function(KeywordSearched value) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KeywordInitial value)? initial,
    TResult? Function(KeywordSearched value)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeywordInitial value)? initial,
    TResult Function(KeywordSearched value)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeywordStateCopyWith<KeywordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordStateCopyWith<$Res> {
  factory $KeywordStateCopyWith(
          KeywordState value, $Res Function(KeywordState) then) =
      _$KeywordStateCopyWithImpl<$Res, KeywordState>;
  @useResult
  $Res call({List<Keyword> keywords});
}

/// @nodoc
class _$KeywordStateCopyWithImpl<$Res, $Val extends KeywordState>
    implements $KeywordStateCopyWith<$Res> {
  _$KeywordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
  }) {
    return _then(_value.copyWith(
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<Keyword>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordInitialImplCopyWith<$Res>
    implements $KeywordStateCopyWith<$Res> {
  factory _$$KeywordInitialImplCopyWith(_$KeywordInitialImpl value,
          $Res Function(_$KeywordInitialImpl) then) =
      __$$KeywordInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Keyword> keywords});
}

/// @nodoc
class __$$KeywordInitialImplCopyWithImpl<$Res>
    extends _$KeywordStateCopyWithImpl<$Res, _$KeywordInitialImpl>
    implements _$$KeywordInitialImplCopyWith<$Res> {
  __$$KeywordInitialImplCopyWithImpl(
      _$KeywordInitialImpl _value, $Res Function(_$KeywordInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
  }) {
    return _then(_$KeywordInitialImpl(
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<Keyword>,
    ));
  }
}

/// @nodoc

class _$KeywordInitialImpl implements KeywordInitial {
  const _$KeywordInitialImpl({final List<Keyword> keywords = const []})
      : _keywords = keywords;

  final List<Keyword> _keywords;
  @override
  @JsonKey()
  List<Keyword> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  String toString() {
    return 'KeywordState.initial(keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordInitialImpl &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keywords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordInitialImplCopyWith<_$KeywordInitialImpl> get copyWith =>
      __$$KeywordInitialImplCopyWithImpl<_$KeywordInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Keyword> keywords) initial,
    required TResult Function(List<Keyword> keywords) searched,
  }) {
    return initial(keywords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Keyword> keywords)? initial,
    TResult? Function(List<Keyword> keywords)? searched,
  }) {
    return initial?.call(keywords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Keyword> keywords)? initial,
    TResult Function(List<Keyword> keywords)? searched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(keywords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KeywordInitial value) initial,
    required TResult Function(KeywordSearched value) searched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KeywordInitial value)? initial,
    TResult? Function(KeywordSearched value)? searched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeywordInitial value)? initial,
    TResult Function(KeywordSearched value)? searched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class KeywordInitial implements KeywordState {
  const factory KeywordInitial({final List<Keyword> keywords}) =
      _$KeywordInitialImpl;

  @override
  List<Keyword> get keywords;
  @override
  @JsonKey(ignore: true)
  _$$KeywordInitialImplCopyWith<_$KeywordInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeywordSearchedImplCopyWith<$Res>
    implements $KeywordStateCopyWith<$Res> {
  factory _$$KeywordSearchedImplCopyWith(_$KeywordSearchedImpl value,
          $Res Function(_$KeywordSearchedImpl) then) =
      __$$KeywordSearchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Keyword> keywords});
}

/// @nodoc
class __$$KeywordSearchedImplCopyWithImpl<$Res>
    extends _$KeywordStateCopyWithImpl<$Res, _$KeywordSearchedImpl>
    implements _$$KeywordSearchedImplCopyWith<$Res> {
  __$$KeywordSearchedImplCopyWithImpl(
      _$KeywordSearchedImpl _value, $Res Function(_$KeywordSearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
  }) {
    return _then(_$KeywordSearchedImpl(
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<Keyword>,
    ));
  }
}

/// @nodoc

class _$KeywordSearchedImpl implements KeywordSearched {
  const _$KeywordSearchedImpl({final List<Keyword> keywords = const []})
      : _keywords = keywords;

  final List<Keyword> _keywords;
  @override
  @JsonKey()
  List<Keyword> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  String toString() {
    return 'KeywordState.searched(keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordSearchedImpl &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keywords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordSearchedImplCopyWith<_$KeywordSearchedImpl> get copyWith =>
      __$$KeywordSearchedImplCopyWithImpl<_$KeywordSearchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Keyword> keywords) initial,
    required TResult Function(List<Keyword> keywords) searched,
  }) {
    return searched(keywords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Keyword> keywords)? initial,
    TResult? Function(List<Keyword> keywords)? searched,
  }) {
    return searched?.call(keywords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Keyword> keywords)? initial,
    TResult Function(List<Keyword> keywords)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(keywords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KeywordInitial value) initial,
    required TResult Function(KeywordSearched value) searched,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KeywordInitial value)? initial,
    TResult? Function(KeywordSearched value)? searched,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KeywordInitial value)? initial,
    TResult Function(KeywordSearched value)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class KeywordSearched implements KeywordState {
  const factory KeywordSearched({final List<Keyword> keywords}) =
      _$KeywordSearchedImpl;

  @override
  List<Keyword> get keywords;
  @override
  @JsonKey(ignore: true)
  _$$KeywordSearchedImplCopyWith<_$KeywordSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginRequest request) unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginRequest request)? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginRequest request)? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginUnauthenticated value) unauthenticated,
    required TResult Function(LoginAuthenticated value) authenticated,
    required TResult Function(LoginInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginUnauthenticated value)? unauthenticated,
    TResult? Function(LoginAuthenticated value)? authenticated,
    TResult? Function(LoginInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginUnauthenticated value)? unauthenticated,
    TResult Function(LoginAuthenticated value)? authenticated,
    TResult Function(LoginInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginRequest request) unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() invalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginRequest request)? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? invalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginRequest request)? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginUnauthenticated value) unauthenticated,
    required TResult Function(LoginAuthenticated value) authenticated,
    required TResult Function(LoginInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginUnauthenticated value)? unauthenticated,
    TResult? Function(LoginAuthenticated value)? authenticated,
    TResult? Function(LoginInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginUnauthenticated value)? unauthenticated,
    TResult Function(LoginAuthenticated value)? authenticated,
    TResult Function(LoginInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginUnauthenticatedImplCopyWith<$Res> {
  factory _$$LoginUnauthenticatedImplCopyWith(_$LoginUnauthenticatedImpl value,
          $Res Function(_$LoginUnauthenticatedImpl) then) =
      __$$LoginUnauthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequest request});

  $LoginRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$LoginUnauthenticatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginUnauthenticatedImpl>
    implements _$$LoginUnauthenticatedImplCopyWith<$Res> {
  __$$LoginUnauthenticatedImplCopyWithImpl(_$LoginUnauthenticatedImpl _value,
      $Res Function(_$LoginUnauthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$LoginUnauthenticatedImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestCopyWith<$Res> get request {
    return $LoginRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$LoginUnauthenticatedImpl implements LoginUnauthenticated {
  const _$LoginUnauthenticatedImpl({this.request = LoginRequest.empty});

  @override
  @JsonKey()
  final LoginRequest request;

  @override
  String toString() {
    return 'LoginState.unauthenticated(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUnauthenticatedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUnauthenticatedImplCopyWith<_$LoginUnauthenticatedImpl>
      get copyWith =>
          __$$LoginUnauthenticatedImplCopyWithImpl<_$LoginUnauthenticatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginRequest request) unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() invalid,
  }) {
    return unauthenticated(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginRequest request)? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? invalid,
  }) {
    return unauthenticated?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginRequest request)? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginUnauthenticated value) unauthenticated,
    required TResult Function(LoginAuthenticated value) authenticated,
    required TResult Function(LoginInvalid value) invalid,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginUnauthenticated value)? unauthenticated,
    TResult? Function(LoginAuthenticated value)? authenticated,
    TResult? Function(LoginInvalid value)? invalid,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginUnauthenticated value)? unauthenticated,
    TResult Function(LoginAuthenticated value)? authenticated,
    TResult Function(LoginInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class LoginUnauthenticated implements LoginState {
  const factory LoginUnauthenticated({final LoginRequest request}) =
      _$LoginUnauthenticatedImpl;

  LoginRequest get request;
  @JsonKey(ignore: true)
  _$$LoginUnauthenticatedImplCopyWith<_$LoginUnauthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAuthenticatedImplCopyWith<$Res> {
  factory _$$LoginAuthenticatedImplCopyWith(_$LoginAuthenticatedImpl value,
          $Res Function(_$LoginAuthenticatedImpl) then) =
      __$$LoginAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginAuthenticatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginAuthenticatedImpl>
    implements _$$LoginAuthenticatedImplCopyWith<$Res> {
  __$$LoginAuthenticatedImplCopyWithImpl(_$LoginAuthenticatedImpl _value,
      $Res Function(_$LoginAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginAuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginAuthenticatedImpl implements LoginAuthenticated {
  const _$LoginAuthenticatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginAuthenticatedImplCopyWith<_$LoginAuthenticatedImpl> get copyWith =>
      __$$LoginAuthenticatedImplCopyWithImpl<_$LoginAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginRequest request) unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() invalid,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginRequest request)? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? invalid,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginRequest request)? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginUnauthenticated value) unauthenticated,
    required TResult Function(LoginAuthenticated value) authenticated,
    required TResult Function(LoginInvalid value) invalid,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginUnauthenticated value)? unauthenticated,
    TResult? Function(LoginAuthenticated value)? authenticated,
    TResult? Function(LoginInvalid value)? invalid,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginUnauthenticated value)? unauthenticated,
    TResult Function(LoginAuthenticated value)? authenticated,
    TResult Function(LoginInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class LoginAuthenticated implements LoginState {
  const factory LoginAuthenticated({required final User user}) =
      _$LoginAuthenticatedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoginAuthenticatedImplCopyWith<_$LoginAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginInvalidImplCopyWith<$Res> {
  factory _$$LoginInvalidImplCopyWith(
          _$LoginInvalidImpl value, $Res Function(_$LoginInvalidImpl) then) =
      __$$LoginInvalidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInvalidImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInvalidImpl>
    implements _$$LoginInvalidImplCopyWith<$Res> {
  __$$LoginInvalidImplCopyWithImpl(
      _$LoginInvalidImpl _value, $Res Function(_$LoginInvalidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInvalidImpl implements LoginInvalid {
  const _$LoginInvalidImpl();

  @override
  String toString() {
    return 'LoginState.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInvalidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginRequest request) unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginRequest request)? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginRequest request)? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginUnauthenticated value) unauthenticated,
    required TResult Function(LoginAuthenticated value) authenticated,
    required TResult Function(LoginInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginUnauthenticated value)? unauthenticated,
    TResult? Function(LoginAuthenticated value)? authenticated,
    TResult? Function(LoginInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginUnauthenticated value)? unauthenticated,
    TResult Function(LoginAuthenticated value)? authenticated,
    TResult Function(LoginInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class LoginInvalid implements LoginState {
  const factory LoginInvalid() = _$LoginInvalidImpl;
}

/// @nodoc
mixin _$ProductState {
  int get currentIndex => throw _privateConstructorUsedError;
  List<ProductElement> get products => throw _privateConstructorUsedError;
  bool get hasReachEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {int currentIndex, List<ProductElement> products, bool hasReachEnd});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? products = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex, List<ProductElement> products, bool hasReachEnd});
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? products = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_$PostStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  _$PostStateImpl(
      {this.currentIndex = 0,
      final List<ProductElement> products = const [],
      this.hasReachEnd = false})
      : _products = products;

  @override
  @JsonKey()
  final int currentIndex;
  final List<ProductElement> _products;
  @override
  @JsonKey()
  List<ProductElement> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool hasReachEnd;

  @override
  String toString() {
    return 'ProductState(currentIndex: $currentIndex, products: $products, hasReachEnd: $hasReachEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.hasReachEnd, hasReachEnd) ||
                other.hasReachEnd == hasReachEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex,
      const DeepCollectionEquality().hash(_products), hasReachEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements ProductState {
  factory _PostState(
      {final int currentIndex,
      final List<ProductElement> products,
      final bool hasReachEnd}) = _$PostStateImpl;

  @override
  int get currentIndex;
  @override
  List<ProductElement> get products;
  @override
  bool get hasReachEnd;
  @override
  @JsonKey(ignore: true)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  String get query => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<ProductElement> get products => throw _privateConstructorUsedError;
  bool get hasReachEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {String query,
      int currentIndex,
      List<ProductElement> products,
      bool hasReachEnd});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentIndex = null,
    Object? products = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      int currentIndex,
      List<ProductElement> products,
      bool hasReachEnd});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentIndex = null,
    Object? products = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_$SearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {required this.query,
      this.currentIndex = 0,
      final List<ProductElement> products = const [],
      this.hasReachEnd = false})
      : _products = products;

  @override
  final String query;
  @override
  @JsonKey()
  final int currentIndex;
  final List<ProductElement> _products;
  @override
  @JsonKey()
  List<ProductElement> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool hasReachEnd;

  @override
  String toString() {
    return 'SearchState(query: $query, currentIndex: $currentIndex, products: $products, hasReachEnd: $hasReachEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.hasReachEnd, hasReachEnd) ||
                other.hasReachEnd == hasReachEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, currentIndex,
      const DeepCollectionEquality().hash(_products), hasReachEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {required final String query,
      final int currentIndex,
      final List<ProductElement> products,
      final bool hasReachEnd}) = _$SearchStateImpl;

  @override
  String get query;
  @override
  int get currentIndex;
  @override
  List<ProductElement> get products;
  @override
  bool get hasReachEnd;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
