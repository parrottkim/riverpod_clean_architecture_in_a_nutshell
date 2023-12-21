part of '../widget.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double width;

  const CustomElevatedButton({
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

class CustomIconButton extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;

  const CustomIconButton({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(icon),
      ),
    );
  }
}

class CartIconButton extends ConsumerWidget {
  const CartIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(loginControllerProvider) as LoginAuthenticated;
    final cart = ref.watch(cartControllerProvider(id: account.user.id));

    return InkWell(
      onTap: () {},
      customBorder: const CircleBorder(),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(
          Icons.shopping_cart_outlined,
        ),
      ),
    );
  }
}
