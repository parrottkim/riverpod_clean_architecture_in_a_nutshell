import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/widget/logo.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/widget/product_list_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

class SearchCompletedFormWidget extends ConsumerWidget {
  final String query;

  const SearchCompletedFormWidget({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchControllerProvider(query));

    return switch (state) {
      AsyncData(:final value) =>
          ProductListWidget(
            items: value.products,
            hasReachEnd: value.hasReachEnd,
            onNotification: (notification) {
              if (notification.metrics.pixels >=
                  notification.metrics.maxScrollExtent - 20.0) {
                ref.read(searchControllerProvider(value.query).notifier).loadMore();
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