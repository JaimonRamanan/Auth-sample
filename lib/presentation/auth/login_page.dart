import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_sample/core/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auth_sample/presentation/widgets/cm_button.dart';

import '../widgets/text_field_with_title.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailCtr = TextEditingController();
  final TextEditingController pswdCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                AppImages.logo,
                width: 54.h,
                height: 54.h,
              ),
              SizedBox(height: 40.h),
              Text(
                "Sign in to your account",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 20.h),
              TextFieldWithTitleWidget(
                ctr: emailCtr,
                title: "Email",
                hint: "eg: johndoe@gmail.com",
              ),
              SizedBox(height: 10.h),
              TextFieldWithTitleWidget(
                ctr: pswdCtr,
                title: "Password",
                hint: "eg: johndoe@gmail.com",
              ),
              SizedBox(height: 20.h),
              CommonButton(name: "SIGN IN", onPressed: () {}),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
