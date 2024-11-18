part of 'home_view.dart';

class _FloatActionButton extends StatelessWidget {
  const _FloatActionButton({
    required this.floatButtonPressed,
  });
  final VoidCallback floatButtonPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      onPressed: floatButtonPressed,
      child: const FaIcon(FontAwesomeIcons.arrowUp),
    );
  }
}
