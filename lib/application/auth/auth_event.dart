part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.validateSignInData() = _ValidateSingInData;
  factory AuthEvent.validateSignUpData() = _ValidateSingUpData;
}
