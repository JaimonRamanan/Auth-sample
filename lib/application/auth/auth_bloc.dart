import 'package:auth_sample/core/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController pswdCtr = TextEditingController();
  final TextEditingController emailCtr = TextEditingController();
  AuthBloc() : super(AuthState.initial()) {
    on<_ValidateSingInData>(
      (event, emit) {
        if (emailCtr.text.isNotEmpty &&
            pswdCtr.text.isNotEmpty &&
            emailRegx.hasMatch(emailCtr.text) &&
            pswdRegx.hasMatch(pswdCtr.text)) {
          emit(state.copyWith(showBtn: true));
        } else {
          emit(state.copyWith(showBtn: false));
        }
      },
    );
  }
}
