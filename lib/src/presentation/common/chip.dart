import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Function()? onTap;
  final Color? borderColor;
  final Color? backgroundColor;
  final Widget child;

  const CustomChip({
    super.key,
    this.onTap,
    this.borderColor,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
              )
            : null,
        color: backgroundColor,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          child: child,
        ),
      ),
    );
  }
}
