import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auth_sample/core/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController pswdCtr = TextEditingController();
  final TextEditingController emailCtr = TextEditingController();

  final TextEditingController nameCtr = TextEditingController();
  final TextEditingController signUpPswdCtr = TextEditingController();
  final TextEditingController signUpemailCtr = TextEditingController();
  final TextEditingController cnfrmPswdCtr = TextEditingController();
  AuthBloc() : super(AuthState.initial()) {
    on<_ValidateSingInData>(
      (event, emit) {
        if (emailCtr.text.isNotEmpty &&
            pswdCtr.text.isNotEmpty &&
            emailRegx.hasMatch(emailCtr.text) &&
            pswdRegx.hasMatch(pswdCtr.text)) {
          emit(state.copyWith(showSignInBtn: true));
        } else {
          emit(state.copyWith(showSignInBtn: false));
        }
      },
    );

    on<_ValidateSingUpData>(
      (event, emit) {
        if (nameCtr.text.isNotEmpty &&
            signUpemailCtr.text.isNotEmpty &&
            signUpPswdCtr.text.isNotEmpty &&
            emailRegx.hasMatch(signUpemailCtr.text) &&
            pswdRegx.hasMatch(signUpPswdCtr.text)) {
          emit(state.copyWith(showSignUpBtn: true));
        } else {
          emit(state.copyWith(showSignUpBtn: false));
        }
      },
    );
  }
}
