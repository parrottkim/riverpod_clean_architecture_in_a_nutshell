import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/repository.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/service.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'source.g.dart';
part 'source/auth_data_source.dart';
part 'source/cart_data_source.dart';
part 'source/local_data_source.dart';
part 'source/product_data_source.dart';
part 'source/search_data_soruce.dart';
