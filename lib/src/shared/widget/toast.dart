part of '../widget.dart';

enum ToastType { standard, error, verified }

class Toast extends StatelessWidget {
  final ToastType type;
  final String message;

  const Toast({
    super.key,
    this.type = ToastType.standard,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      switch (type) {
        case ToastType.standard:
          return Theme.of(context).colorScheme.surface;
        case ToastType.error:
          return Theme.of(context).colorScheme.errorContainer;
        case ToastType.verified:
          return Theme.of(context).colorScheme.tertiary;
      }
    }

    Color getTextColor() {
      switch (type) {
        case ToastType.standard:
          return Theme.of(context).colorScheme.onSurface;
        case ToastType.error:
          return Theme.of(context).colorScheme.error;
        case ToastType.verified:
          return Theme.of(context).colorScheme.onTertiary;
      }
    }

    IconData getIcon() {
      switch (type) {
        case ToastType.standard:
          return Icons.info_outline;
        case ToastType.error:
          return Icons.cancel_outlined;
        case ToastType.verified:
          return Icons.check_circle_outline;
      }
    }

    return Card(
      color: getColor(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Icon(
              getIcon(),
              color: getTextColor(),
            ),
            SizedBox(width: 8.0),
            Text(
              message,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: getTextColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
