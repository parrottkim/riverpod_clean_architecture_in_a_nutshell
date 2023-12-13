part of 'widget.dart';

class Logo extends StatelessWidget {
  final double size;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? iconColor;

  const Logo({
    super.key,
    this.size = 40.0,
    this.isLoading = false,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (isLoading)
          SizedBox(
            width: size * 1.4,
            height: size * 1.4,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: size * 0.1,
                color: backgroundColor ?? Theme.of(context).colorScheme.primary,
              ),
            ),
          )
        else
          Container(
            padding: EdgeInsets.all(size * 0.35),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: size / 10,
                color: backgroundColor ?? Theme.of(context).colorScheme.primary,
              ),
            ),
            child: SizedBox(
              width: size,
              height: size,
            ),
          ),
        Container(
          padding: EdgeInsets.all(size * 0.3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? Theme.of(context).colorScheme.primary,
          ),
          child: Transform.rotate(
            angle: 0.5,
            origin: Offset(size * 0.05, 0.0),
            child: Icon(
              Icons.local_airport,
              size: isLoading ? size * 0.5 : size,
              color: iconColor ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
