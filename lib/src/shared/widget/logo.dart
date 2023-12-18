part of '../widget.dart';

class Logo extends StatelessWidget {
  final double size;
  final bool isLoading;
  final bool filled;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;

  const Logo({
    super.key,
    this.size = 40.0,
    this.isLoading = false,
    this.filled = false,
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (isLoading)
          SizedBox(
            width: size * 2.0,
            height: size * 2.0,
            child: CircularProgressIndicator(
              strokeWidth: size * 0.1,
              valueColor: AlwaysStoppedAnimation(
                  borderColor ?? Theme.of(context).colorScheme.primary),
            ),
          ),
        Container(
          padding: EdgeInsets.all(size * 0.3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: !filled
                ? Border.all(
                    width: size * 0.1,
                    color: borderColor ?? Theme.of(context).colorScheme.primary,
                  )
                : null,
            color:
                filled ? backgroundColor ?? Theme.of(context).colorScheme.primary : null,
          ),
          child: Transform.rotate(
            angle: 0.5,
            origin: Offset(size * 0.05, 0.0),
            child: Icon(
              Icons.local_airport,
              size: size,
              color: filled
                  ? iconColor ?? Theme.of(context).colorScheme.onPrimary
                  : iconColor ?? Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
