import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SplashScreen extends ConsumerStatefulWidget {
  final String? path;

  const SplashScreen({
    super.key,
    this.path,
  });

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration.zero, () => ref.read(loginControllerProvider.notifier).init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Logo(
              borderColor: Theme.of(context).colorScheme.onSurface,
              iconColor: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(height: 6.0),
            Text(
              'DUMMYSHOP',
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToLastDescent: false,
                leadingDistribution: TextLeadingDistribution.even,
              ),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
