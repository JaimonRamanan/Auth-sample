import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auth_sample/presentation/widgets/cm_button.dart';

import '../../application/auth/auth_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    GoogleSignInAccount? account = bloc.state.account;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (account?.photoUrl != null)
              Image.network(
                account!.photoUrl!,
                width: 100.h,
                height: 100.h,
              ),
            Text(account?.displayName ?? ""),
            Text(account?.email ?? ""),
            SizedBox(height: 30.h),
            CommonButton(
              width: 250.w,
              name: "LOGOUT",
              onPressed: () {
                bloc.add(AuthEvent.logOut());
                context.router.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
