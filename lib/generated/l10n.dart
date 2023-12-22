// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Username`
  String get login_username {
    return Intl.message(
      'Username',
      name: 'login_username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect username or password`
  String get login_invalid {
    return Intl.message(
      'Incorrect username or password',
      name: 'login_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get home_appbar {
    return Intl.message(
      'Welcome Back!',
      name: 'home_appbar',
      desc: '',
      args: [],
    );
  }

  /// `Popular Article`
  String get home_article_title {
    return Intl.message(
      'Popular Article',
      name: 'home_article_title',
      desc: '',
      args: [],
    );
  }

  /// `ZDNET editors' favorite tech products of 2023`
  String get home_article_body {
    return Intl.message(
      'ZDNET editors\' favorite tech products of 2023',
      name: 'home_article_body',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get home_category_title {
    return Intl.message(
      'Categories',
      name: 'home_category_title',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get category_all {
    return Intl.message(
      'All',
      name: 'category_all',
      desc: '',
      args: [],
    );
  }

  /// `Automotive`
  String get category_automotive {
    return Intl.message(
      'Automotive',
      name: 'category_automotive',
      desc: '',
      args: [],
    );
  }

  /// `Fragrances`
  String get category_fragrances {
    return Intl.message(
      'Fragrances',
      name: 'category_fragrances',
      desc: '',
      args: [],
    );
  }

  /// `Furniture`
  String get category_furniture {
    return Intl.message(
      'Furniture',
      name: 'category_furniture',
      desc: '',
      args: [],
    );
  }

  /// `Groceries`
  String get category_groceries {
    return Intl.message(
      'Groceries',
      name: 'category_groceries',
      desc: '',
      args: [],
    );
  }

  /// `Home Decoration`
  String get category_home_decoration {
    return Intl.message(
      'Home Decoration',
      name: 'category_home_decoration',
      desc: '',
      args: [],
    );
  }

  /// `Laptops`
  String get category_laptops {
    return Intl.message(
      'Laptops',
      name: 'category_laptops',
      desc: '',
      args: [],
    );
  }

  /// `Lighting`
  String get category_lighting {
    return Intl.message(
      'Lighting',
      name: 'category_lighting',
      desc: '',
      args: [],
    );
  }

  /// `Men's Shirts`
  String get category_mens_shirts {
    return Intl.message(
      'Men\'s Shirts',
      name: 'category_mens_shirts',
      desc: '',
      args: [],
    );
  }

  /// `Men's Shoes`
  String get category_mens_shoes {
    return Intl.message(
      'Men\'s Shoes',
      name: 'category_mens_shoes',
      desc: '',
      args: [],
    );
  }

  /// `Men's Watches`
  String get category_mens_watches {
    return Intl.message(
      'Men\'s Watches',
      name: 'category_mens_watches',
      desc: '',
      args: [],
    );
  }

  /// `Motorcycle`
  String get category_motorcycle {
    return Intl.message(
      'Motorcycle',
      name: 'category_motorcycle',
      desc: '',
      args: [],
    );
  }

  /// `Skincare`
  String get category_skincare {
    return Intl.message(
      'Skincare',
      name: 'category_skincare',
      desc: '',
      args: [],
    );
  }

  /// `Smartphones`
  String get category_smartphones {
    return Intl.message(
      'Smartphones',
      name: 'category_smartphones',
      desc: '',
      args: [],
    );
  }

  /// `Sunglasses`
  String get category_sunglasses {
    return Intl.message(
      'Sunglasses',
      name: 'category_sunglasses',
      desc: '',
      args: [],
    );
  }

  /// `Tops`
  String get category_tops {
    return Intl.message(
      'Tops',
      name: 'category_tops',
      desc: '',
      args: [],
    );
  }

  /// `Women's Bags`
  String get category_womens_bags {
    return Intl.message(
      'Women\'s Bags',
      name: 'category_womens_bags',
      desc: '',
      args: [],
    );
  }

  /// `Women's Dresses`
  String get category_womens_dresses {
    return Intl.message(
      'Women\'s Dresses',
      name: 'category_womens_dresses',
      desc: '',
      args: [],
    );
  }

  /// `Women's Jewellery`
  String get category_womens_jewellery {
    return Intl.message(
      'Women\'s Jewellery',
      name: 'category_womens_jewellery',
      desc: '',
      args: [],
    );
  }

  /// `Women's Shoes`
  String get category_womens_shoes {
    return Intl.message(
      'Women\'s Shoes',
      name: 'category_womens_shoes',
      desc: '',
      args: [],
    );
  }

  /// `Women's Watches`
  String get category_womens_watches {
    return Intl.message(
      'Women\'s Watches',
      name: 'category_womens_watches',
      desc: '',
      args: [],
    );
  }

  /// `Search products`
  String get product_hint {
    return Intl.message(
      'Search products',
      name: 'product_hint',
      desc: '',
      args: [],
    );
  }

  /// `Search products`
  String get search_initial_hint {
    return Intl.message(
      'Search products',
      name: 'search_initial_hint',
      desc: '',
      args: [],
    );
  }

  /// `Recent Keywords`
  String get search_initial_recent {
    return Intl.message(
      'Recent Keywords',
      name: 'search_initial_recent',
      desc: '',
      args: [],
    );
  }

  /// `Erase all`
  String get search_initial_recent_erase {
    return Intl.message(
      'Erase all',
      name: 'search_initial_recent_erase',
      desc: '',
      args: [],
    );
  }

  /// `Popular Keywords`
  String get search_initial_popular {
    return Intl.message(
      'Popular Keywords',
      name: 'search_initial_popular',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'ko', countryCode: 'KR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
