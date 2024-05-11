import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auth_sample/presentation/widgets/cm_text_field.dart';

class TextFieldWithTitleWidget extends StatelessWidget {
  final String title;
  final String? hint;
  final TextEditingController ctr;
  final FormFieldValidator<String>? validator;
  const TextFieldWithTitleWidget({
    super.key,
    this.hint,
    this.validator,
    required this.ctr,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          hint: hint ?? "",
          controller: ctr,
          validator: validator,
        ),
      ],
    );
  }
}
