import 'package:flutter/material.dart';

class GlobalSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? prefixIcon;
  final Function(String) onSubmitted;

  const GlobalSearchField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: Theme.of(context).colorScheme.onPrimary.withAlpha(200),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary.withAlpha(150),
        ),
      ),
    );
  }
}
