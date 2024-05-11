import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auth_sample/core/app_images.dart';
import 'package:auth_sample/core/route/route_names.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/auth/auth_bloc.dart';

class GoogleAuthBtnWidget extends StatelessWidget {
  const GoogleAuthBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.account != current.account && current.account != null,
      listener: (context, state) {
        context.router.pushNamed(RouteNames.homeScreen);
      },
      child: InkWell(
        onTap: () async {
          bloc.add(AuthEvent.loginWithGoogle());
        },
        child: Image.asset(
          AppImages.googleIcon,
          width: 40.h,
          height: 40.h,
        ),
      ),
    );
  }
}
