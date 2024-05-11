import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/cm_button.dart';
import '../../../application/auth/auth_bloc.dart';

class SignUpBtnWidget extends StatelessWidget {
  const SignUpBtnWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) =>
          previous.showSignUpBtn != current.showSignUpBtn,
      builder: (context, state) {
        return CommonButton(
          name: "SIGN UP",
          disable: !state.showSignUpBtn,
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {}
          },
        );
      },
    );
  }
}
