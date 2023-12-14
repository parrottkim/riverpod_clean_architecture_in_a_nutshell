part of '../widget.dart';

class ContainedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double width;

  const ContainedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          padding: EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          textStyle: Theme.of(context).textTheme.bodyLarge,
        ),
        child: child,
      ),
    );
  }
}
