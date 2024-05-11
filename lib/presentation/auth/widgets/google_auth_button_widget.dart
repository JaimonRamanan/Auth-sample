import 'package:flutter/material.dart';
import 'package:auth_sample/core/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleAuthBtnWidget extends StatelessWidget {
  const GoogleAuthBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.asset(
        AppImages.googleIcon,
        width: 40.h,
        height: 40.h,
      ),
    );
  }
}
