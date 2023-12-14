import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SplashPage extends ConsumerStatefulWidget {
  final String? path;

  const SplashPage({
    super.key,
    this.path,
  });

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration.zero, () => ref.read(loginControllerProvider.notifier).init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Logo(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            SizedBox(height: 4.0),
            Text(
              'DUMMYSHOP',
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToLastDescent: false,
                leadingDistribution: TextLeadingDistribution.even,
              ),
              style: GoogleFonts.oswald(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onPrimary,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
