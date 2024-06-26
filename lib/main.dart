import 'package:flutter/material.dart';
import 'package:auth_sample/core/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auth_sample/application/auth/auth_bloc.dart';

import 'core/route/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
