part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool showBtn,
  }) = _Initial;
  factory AuthState.initial() => const AuthState();
}
