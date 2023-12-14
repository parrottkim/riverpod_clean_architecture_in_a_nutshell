part of '../widget.dart';

class Logo extends StatelessWidget {
  final double size;
  final bool isLoading;
  final Color? color;

  const Logo({
    super.key,
    this.size = 40.0,
    this.isLoading = false,
    this.color,
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
              color: color ?? Theme.of(context).colorScheme.primary,
            ),
          ),
        Container(
          padding: EdgeInsets.all(size * 0.3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: size * 0.1,
              color: color ?? Theme.of(context).colorScheme.primary,
            ),
          ),
          child: Transform.rotate(
            angle: 0.5,
            origin: Offset(size * 0.05, 0.0),
            child: Icon(
              Icons.local_airport,
              size: size,
              color: color ?? Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
