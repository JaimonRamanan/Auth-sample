part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    GoogleSignInAccount? account,
    @Default(false) bool showSignInBtn,
    @Default(false) bool showSignUpBtn,
  }) = _Initial;
  factory AuthState.initial() => const AuthState();
}
