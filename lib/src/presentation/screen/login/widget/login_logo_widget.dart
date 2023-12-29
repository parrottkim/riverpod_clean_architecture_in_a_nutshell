import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ],
      ),
    );
  }
}
