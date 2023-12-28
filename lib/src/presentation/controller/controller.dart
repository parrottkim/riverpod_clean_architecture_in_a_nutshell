import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/source.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/tool/jwt_decoder.dart';

import '../../data/model.dart';

part 'cart/cart_controller.dart';
part 'cart/cart_state.dart';
part 'category/category_controller.dart';
part 'category/category_state.dart';
part 'controller.freezed.dart';
part 'controller.g.dart';
part 'dashboard/dashboard_controller.dart';
part 'error/error_controller.dart';
part 'error/error_state.dart';
part 'keyword/keyword_controller.dart';
part 'keyword/keyword_state.dart';
part 'login/login_controller.dart';
part 'login/login_state.dart';
part 'product/product_controller.dart';
part 'product/product_state.dart';
part 'search/search_controller.dart';
part 'search/search_state.dart';
