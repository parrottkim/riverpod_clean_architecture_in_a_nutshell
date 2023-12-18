import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/app.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final ftoast = FToast();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        toastProvider.overrideWithValue(ftoast),
      ],
      child: const App(),
    ),
  );
}
