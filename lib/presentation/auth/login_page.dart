import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auth_sample/core/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';
import 'widgets/signin_btn_widget.dart';
import '../widgets/text_field_with_title.dart';
import '../../application/auth/auth_bloc.dart';
import 'widgets/google_auth_button_widget.dart';
import 'widgets/sign_up_navigation_widget.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
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
                      ctr: bloc.emailCtr,
                      title: "Email",
                      hint: "eg: johndoe@gmail.com",
                      onChanged: (value) {
                        bloc.add(AuthEvent.validateSignInData());
                      },
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
                      ctr: bloc.pswdCtr,
                      hint: "*******",
                      title: "Password",
                      onChanged: (value) {
                        bloc.add(AuthEvent.validateSignInData());
                      },
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
                    SigninBtnWidget(formKey: _formKey),
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
