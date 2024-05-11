import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auth_sample/core/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormField({
    super.key,
    this.validator,
    this.onChanged,
    this.controller,
    required this.hint,
    this.inputFormatters,
  });

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
        hintText: hint,
        counter: const SizedBox.shrink(),
        filled: true,
        isDense: true,
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.grey.shade300,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        fillColor: AppTheme.fillColor,
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
