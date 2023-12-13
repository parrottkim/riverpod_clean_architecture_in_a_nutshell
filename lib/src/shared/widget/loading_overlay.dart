part of 'widget.dart';

class LoadingOverlay extends StatelessWidget {
  static OverlayEntry? _currentOverlay;

  const LoadingOverlay._();

  static OverlayState? _overlayState;

  static bool get isShown => _currentOverlay != null;

  static void show(BuildContext context) {
    _overlayState = Overlay.of(context);
    if (_currentOverlay == null) {
      _currentOverlay = OverlayEntry(builder: (context) {
        return Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.1),
            ),
            const Center(child: LoadingOverlay._()),
          ],
        );
      });

      try {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_currentOverlay != null) {
            _overlayState?.insert(_currentOverlay!);
          }
        });
      } catch (e) {
        print(e.toString());
      }
    }
  }

  static void hide() {
    if (_currentOverlay != null) {
      try {
        _currentOverlay?.remove();
        _currentOverlay = null;
      } catch (e) {
        print(e.toString());
      } finally {
        _currentOverlay = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Material(
        elevation: 1.0,
        shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
        shape: CircleBorder(),
        color: Colors.transparent,
        child: Logo(
          size: 20.0,
          isLoading: true,
          backgroundColor: KeyColor.neutral.tone(70),
        ),
      ),
    );
  }
}
