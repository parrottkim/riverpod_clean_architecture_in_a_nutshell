import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/provider.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

GlobalKey navKey = GlobalKey<ScaffoldState>();

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final toast = ref.watch(toastProvider);

    ref.listen<ErrorState>(errorControllerProvider, (_, state) {
      switch (state) {
        case ErrorNotify(:final message):
          toast.showToast(
            child: Toast(
              type: ToastType.verified,
              message: message,
            ),
          );
      }
    });

    return MaterialApp.router(
      key: navKey,
      title: 'DUMMYSHOP',
      builder: (context, child) => Overlay(
        initialEntries: [
          if (child != null) ...[
            OverlayEntry(
              builder: (context) => Consumer(
                builder: (_, ref, __) {
                  toast.init(context);
                  return child;
                },
              ),
            ),
          ],
        ],
      ),
      routerConfig: router.config,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
