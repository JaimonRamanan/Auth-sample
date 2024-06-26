import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_sample/core/route/route_names.dart';

class SignupNavigationWidget extends StatelessWidget {
  const SignupNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account?",
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.grey.shade500,
            ),
        children: [
          TextSpan(
            text: " SIGN UP",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router.pushNamed(RouteNames.signupScreen);
              },
          )
        ],
      ),
    );
  }
}
