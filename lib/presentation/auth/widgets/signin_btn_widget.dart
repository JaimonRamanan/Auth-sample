import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/cm_button.dart';
import '../../../application/auth/auth_bloc.dart';

class SigninBtnWidget extends StatelessWidget {
  const SigninBtnWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) =>
          previous.showSignInBtn != current.showSignInBtn,
      builder: (context, state) {
        return CommonButton(
          name: "SIGN IN",
          disable: !state.showSignInBtn,
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {}
          },
        );
      },
    );
  }
}
