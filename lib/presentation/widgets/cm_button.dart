import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  final String name;
  final bool disable;
  final double? width;
  final Function()? onPressed;
  const CommonButton({
    super.key,
    this.width,
    this.onPressed,
    required this.name,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: disable ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context)
              .colorScheme
              .primary
              .withOpacity(disable ? 0.2 : 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          name,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
