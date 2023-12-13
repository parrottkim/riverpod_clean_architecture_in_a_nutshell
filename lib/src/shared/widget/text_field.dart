part of 'widget.dart';

class OutlinedTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;

  const OutlinedTextField({
    super.key,
    this.onChanged,
    this.onSubmitted,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.autofillHints,
    this.textInputAction,
    this.labelText,
    this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      controller: controller,
      obscureText: obscureText,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: KeyColor.neutral.tone(60),
        labelText: labelText,
        labelStyle: TextStyle(color: KeyColor.neutral.tone(40)),
        hintText: hintText,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 1.0,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: KeyColor.neutral.tone(60),
            width: 1.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: KeyColor.primary,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
