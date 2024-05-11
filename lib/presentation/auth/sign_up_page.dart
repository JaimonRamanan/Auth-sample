import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';
import '../widgets/cm_button.dart';
import '../../core/app_images.dart';
import '../widgets/text_field_with_title.dart';
import 'widgets/google_auth_button_widget.dart';
import 'widgets/sign_in_navigation_widget.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameCtr = TextEditingController();
  final TextEditingController pswdCtr = TextEditingController();
  final TextEditingController emailCtr = TextEditingController();
  final TextEditingController cnfrmPswdCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset(AppImages.logo, width: 24.h, height: 24.h),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15.h),
                  Text(
                    "Create you account",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 20.h),
                  TextFieldWithTitleWidget(
                    ctr: nameCtr,
                    title: "Name",
                    hint: "eg: john doe",
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
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
                  SizedBox(height: 10.h),
                  TextFieldWithTitleWidget(
                    hint: "*******",
                    ctr: cnfrmPswdCtr,
                    title: "Confirm password",
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please re-enter password";
                      } else if (pswdCtr.text.isNotEmpty &&
                          pswdCtr.text != value) {
                        return "Passwords mismatch";
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
                  const SignInNavigationWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
