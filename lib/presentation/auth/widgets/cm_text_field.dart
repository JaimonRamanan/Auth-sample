import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.fillColor,
    this.validator,
    this.onChanged,
    this.controller,
    this.filled = true,
    this.inputFormatters,
  });

  final bool? filled;
  final Color? fillColor;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      decoration: decoration,
      inputFormatters: inputFormatters,
    );
  }

  InputDecoration get decoration => InputDecoration(
        counter: const SizedBox.shrink(),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        fillColor: fillColor,
        filled: filled ?? true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      );
}
