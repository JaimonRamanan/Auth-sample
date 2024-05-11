import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';
import '../../core/app_images.dart';
import 'widgets/sign_up_btn_widget.dart';
import '../../application/auth/auth_bloc.dart';
import '../widgets/text_field_with_title.dart';
import 'widgets/google_auth_button_widget.dart';
import 'widgets/sign_in_navigation_widget.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
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
                    ctr: bloc.nameCtr,
                    title: "Name",
                    hint: "eg: john doe",
                    onChanged: (value) {
                      bloc.add(AuthEvent.validateSignUpData());
                    },
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  TextFieldWithTitleWidget(
                    title: "Email",
                    ctr: bloc.signUpemailCtr,
                    hint: "eg: johndoe@gmail.com",
                    onChanged: (value) {
                      bloc.add(AuthEvent.validateSignUpData());
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
                    ctr: bloc.signUpPswdCtr,
                    hint: "*******",
                    title: "Password",
                    onChanged: (value) {
                      bloc.add(AuthEvent.validateSignUpData());
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
                  SizedBox(height: 10.h),
                  TextFieldWithTitleWidget(
                    hint: "*******",
                    ctr: bloc.cnfrmPswdCtr,
                    title: "Confirm password",
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please re-enter password";
                      } else if (bloc.signUpPswdCtr.text.isNotEmpty &&
                          bloc.pswdCtr.text != value) {
                        return "Passwords mismatch";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.h),
                  SignUpBtnWidget(formKey: _formKey),
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
