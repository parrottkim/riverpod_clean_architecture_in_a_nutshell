import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget/widget.dart';

class DashboardLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardLayout({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: DashboardBottomNavigator(),
    );
  }
}

class DashboardBottomNavigator extends HookWidget {
  const DashboardBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Theme.of(context).colorScheme.onSurface,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      items: WidgetPrefab.navigationItems
          .map((item) => BottomNavigationBarItem(
        icon: Icon(item.unselectedIcon),
                activeIcon: Icon(item.selectedIcon),
                label: item.label,
              ))
          .toList(),
      onTap: (index) {
        selectedIndex.value = index;
        context.go(WidgetPrefab.navigationItems[index].route);
      },
      currentIndex: selectedIndex.value,
    );
  }
}
