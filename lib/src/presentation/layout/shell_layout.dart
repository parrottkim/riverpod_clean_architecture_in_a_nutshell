import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellLayout extends StatefulWidget {
  final Widget child;

  const ShellLayout({
    super.key,
    required this.child,
  });

  @override
  State<ShellLayout> createState() => _ShellLayoutState();
}

class _ShellLayoutState extends State<ShellLayout> with SingleTickerProviderStateMixin {
  late TextEditingController _searchController;

  late AnimationController _controller;
  late Animation _opacityAnimation;

  @override
  void initState() {
    _searchController = TextEditingController();

    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _controller.dispose();
    super.dispose();
  }

  _insertOverlay() {
    showDialog(context: context, builder: (_) => _searchOverlay());
    _searchController.clear();
    _controller.forward();
  }

  _removeOverlay() {
    Navigator.pop(context);
  }

  Widget _searchOverlay() {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Opacity(
        opacity: _opacityAnimation.value,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Material(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: MediaQuery.of(context).viewPadding.top + 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0.0,
                          blurRadius: 2.0,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Theme.of(context).cardColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          child: Icon(
                            Icons.arrow_outward,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: TextField(
                              autofocus: true,
                              controller: _searchController,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                              ),
                              onSubmitted: (value) {
                                _removeOverlay();
                                context.go(value);
                              },
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _removeOverlay(),
                            customBorder: const CircleBorder(),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.close,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              child: InkWell(
                onTap: () {
                  _insertOverlay();
                  _searchController.text = GoRouterState.of(context).uri.toString();
                },
                child: Row(
                  children: [
                    const SizedBox(width: 16.0),
                    const Text('path: '),
                    Expanded(
                      child: Text(GoRouterState.of(context).uri.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.open_in_new,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(height: 1.0),
          Expanded(child: widget.child),
        ],
      ),
    );
    if (Theme.of(context).platform == TargetPlatform.windows || kIsWeb) {
      return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    _insertOverlay();
                    _searchController.text = GoRouterState.of(context).uri.toString();
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 16.0),
                      const Text('path: '),
                      Expanded(
                        child: Text(GoRouterState.of(context).uri.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.open_in_new,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 1.0),
            Expanded(child: widget.child),
          ],
        ),
      );
    } else {
      return widget.child;
    }
  }
}
