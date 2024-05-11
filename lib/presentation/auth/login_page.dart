import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_sample/core/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auth_sample/presentation/widgets/cm_button.dart';

import '../../core/constants.dart';
import '../widgets/text_field_with_title.dart';
import 'widgets/google_auth_button_widget.dart';
import 'widgets/sign_up_navigation_widget.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController pswdCtr = TextEditingController();
  final TextEditingController emailCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Please enter email";
                        } else if (!emailRegx.hasMatch(value ?? "")) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10.h),
                    TextFieldWithTitleWidget(
                      ctr: pswdCtr,
                      hint: "*******",
                      title: "Password",
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Please enter password";
                        } else if (!pswdRegx.hasMatch(value ?? "")) {
                          return passwordValidationMsg;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CommonButton(
                      name: "SIGN IN",
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {}
                      },
                    ),
                    SizedBox(height: 15.h),
                    const Text("or sign in with"),
                    SizedBox(height: 15.h),
                    const GoogleAuthBtnWidget(),
                    SizedBox(height: 15.h),
                    const SignupNavigationWidget()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
