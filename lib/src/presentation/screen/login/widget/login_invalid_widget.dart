import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoginInvalidWidget extends StatelessWidget {
  const LoginInvalidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).colorScheme.errorContainer,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.cancel,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              Intl.message('login_invalid'),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
