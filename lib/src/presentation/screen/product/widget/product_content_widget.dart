import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/common/logo.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/common/product_list_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';

class ProductContentWidget extends ConsumerWidget {
  const ProductContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider);
    return switch (state) {
      AsyncData(:final value) => ProductListWidget(
          items: value.products,
          hasReachEnd: value.hasReachEnd,
          onNotification: (notification) {
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 20.0) {
              ref.read(productControllerProvider.notifier).loadMore();
            }
            return false;
          },
        ),
      _ => _loading(),
    };
  }

  Widget _loading() {
    return Center(
      child: Logo(
        size: 20.0,
        isLoading: true,
        borderColor: KeyColor.neutral.tone(70),
        iconColor: KeyColor.neutral.tone(70),
      ),
    );
  }
}
