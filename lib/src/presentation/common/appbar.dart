import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/common/button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.actions,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: context.canPop() ? 8.0 : 16.0,
      leading: context.canPop() && leading == null
          ? CustomIconButton(
              onTap: () => Navigator.of(context).canPop(),
              icon: Icons.chevron_left,
            )
          : leading,
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
