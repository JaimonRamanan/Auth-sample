import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class SignInNavigationWidget extends StatelessWidget {
  const SignInNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Have an account?",
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.grey.shade500,
            ),
        children: [
          TextSpan(
            text: " SIGN IN",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.router.back(),
          )
        ],
      ),
    );
  }
}
