// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  GoogleSignInAccount? get account => throw _privateConstructorUsedError;
  bool get showSignInBtn => throw _privateConstructorUsedError;
  bool get showSignUpBtn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {GoogleSignInAccount? account, bool showSignInBtn, bool showSignUpBtn});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
    Object? showSignInBtn = null,
    Object? showSignUpBtn = null,
  }) {
    return _then(_value.copyWith(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      showSignInBtn: null == showSignInBtn
          ? _value.showSignInBtn
          : showSignInBtn // ignore: cast_nullable_to_non_nullable
              as bool,
      showSignUpBtn: null == showSignUpBtn
          ? _value.showSignUpBtn
          : showSignUpBtn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GoogleSignInAccount? account, bool showSignInBtn, bool showSignUpBtn});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
    Object? showSignInBtn = null,
    Object? showSignUpBtn = null,
  }) {
    return _then(_$InitialImpl(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      showSignInBtn: null == showSignInBtn
          ? _value.showSignInBtn
          : showSignInBtn // ignore: cast_nullable_to_non_nullable
              as bool,
      showSignUpBtn: null == showSignUpBtn
          ? _value.showSignUpBtn
          : showSignUpBtn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.account, this.showSignInBtn = false, this.showSignUpBtn = false});

  @override
  final GoogleSignInAccount? account;
  @override
  @JsonKey()
  final bool showSignInBtn;
  @override
  @JsonKey()
  final bool showSignUpBtn;

  @override
  String toString() {
    return 'AuthState(account: $account, showSignInBtn: $showSignInBtn, showSignUpBtn: $showSignUpBtn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.showSignInBtn, showSignInBtn) ||
                other.showSignInBtn == showSignInBtn) &&
            (identical(other.showSignUpBtn, showSignUpBtn) ||
                other.showSignUpBtn == showSignUpBtn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, account, showSignInBtn, showSignUpBtn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {final GoogleSignInAccount? account,
      final bool showSignInBtn,
      final bool showSignUpBtn}) = _$InitialImpl;

  @override
  GoogleSignInAccount? get account;
  @override
  bool get showSignInBtn;
  @override
  bool get showSignUpBtn;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateSignInData,
    required TResult Function() validateSignUpData,
    required TResult Function() loginWithGoogle,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateSignInData,
    TResult? Function()? validateSignUpData,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateSignInData,
    TResult Function()? validateSignUpData,
    TResult Function()? loginWithGoogle,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateSingInData value) validateSignInData,
    required TResult Function(_ValidateSingUpData value) validateSignUpData,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateSingInData value)? validateSignInData,
    TResult? Function(_ValidateSingUpData value)? validateSignUpData,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateSingInData value)? validateSignInData,
    TResult Function(_ValidateSingUpData value)? validateSignUpData,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidateSingInDataImplCopyWith<$Res> {
  factory _$$ValidateSingInDataImplCopyWith(_$ValidateSingInDataImpl value,
          $Res Function(_$ValidateSingInDataImpl) then) =
      __$$ValidateSingInDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateSingInDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateSingInDataImpl>
    implements _$$ValidateSingInDataImplCopyWith<$Res> {
  __$$ValidateSingInDataImplCopyWithImpl(_$ValidateSingInDataImpl _value,
      $Res Function(_$ValidateSingInDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateSingInDataImpl implements _ValidateSingInData {
  _$ValidateSingInDataImpl();

  @override
  String toString() {
    return 'AuthEvent.validateSignInData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateSingInDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateSignInData,
    required TResult Function() validateSignUpData,
    required TResult Function() loginWithGoogle,
    required TResult Function() logOut,
  }) {
    return validateSignInData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateSignInData,
    TResult? Function()? validateSignUpData,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? logOut,
  }) {
    return validateSignInData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateSignInData,
    TResult Function()? validateSignUpData,
    TResult Function()? loginWithGoogle,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (validateSignInData != null) {
      return validateSignInData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateSingInData value) validateSignInData,
    required TResult Function(_ValidateSingUpData value) validateSignUpData,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LogOut value) logOut,
  }) {
    return validateSignInData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateSingInData value)? validateSignInData,
    TResult? Function(_ValidateSingUpData value)? validateSignUpData,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return validateSignInData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateSingInData value)? validateSignInData,
    TResult Function(_ValidateSingUpData value)? validateSignUpData,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (validateSignInData != null) {
      return validateSignInData(this);
    }
    return orElse();
  }
}

abstract class _ValidateSingInData implements AuthEvent {
  factory _ValidateSingInData() = _$ValidateSingInDataImpl;
}

/// @nodoc
abstract class _$$ValidateSingUpDataImplCopyWith<$Res> {
  factory _$$ValidateSingUpDataImplCopyWith(_$ValidateSingUpDataImpl value,
          $Res Function(_$ValidateSingUpDataImpl) then) =
      __$$ValidateSingUpDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateSingUpDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateSingUpDataImpl>
    implements _$$ValidateSingUpDataImplCopyWith<$Res> {
  __$$ValidateSingUpDataImplCopyWithImpl(_$ValidateSingUpDataImpl _value,
      $Res Function(_$ValidateSingUpDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateSingUpDataImpl implements _ValidateSingUpData {
  _$ValidateSingUpDataImpl();

  @override
  String toString() {
    return 'AuthEvent.validateSignUpData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateSingUpDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateSignInData,
    required TResult Function() validateSignUpData,
    required TResult Function() loginWithGoogle,
    required TResult Function() logOut,
  }) {
    return validateSignUpData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateSignInData,
    TResult? Function()? validateSignUpData,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? logOut,
  }) {
    return validateSignUpData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateSignInData,
    TResult Function()? validateSignUpData,
    TResult Function()? loginWithGoogle,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (validateSignUpData != null) {
      return validateSignUpData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateSingInData value) validateSignInData,
    required TResult Function(_ValidateSingUpData value) validateSignUpData,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LogOut value) logOut,
  }) {
    return validateSignUpData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateSingInData value)? validateSignInData,
    TResult? Function(_ValidateSingUpData value)? validateSignUpData,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return validateSignUpData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateSingInData value)? validateSignInData,
    TResult Function(_ValidateSingUpData value)? validateSignUpData,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (validateSignUpData != null) {
      return validateSignUpData(this);
    }
    return orElse();
  }
}

abstract class _ValidateSingUpData implements AuthEvent {
  factory _ValidateSingUpData() = _$ValidateSingUpDataImpl;
}

/// @nodoc
abstract class _$$LoginWithGoogleImplCopyWith<$Res> {
  factory _$$LoginWithGoogleImplCopyWith(_$LoginWithGoogleImpl value,
          $Res Function(_$LoginWithGoogleImpl) then) =
      __$$LoginWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGoogleImpl>
    implements _$$LoginWithGoogleImplCopyWith<$Res> {
  __$$LoginWithGoogleImplCopyWithImpl(
      _$LoginWithGoogleImpl _value, $Res Function(_$LoginWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithGoogleImpl implements _LoginWithGoogle {
  _$LoginWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateSignInData,
    required TResult Function() validateSignUpData,
    required TResult Function() loginWithGoogle,
    required TResult Function() logOut,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateSignInData,
    TResult? Function()? validateSignUpData,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? logOut,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateSignInData,
    TResult Function()? validateSignUpData,
    TResult Function()? loginWithGoogle,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateSingInData value) validateSignInData,
    required TResult Function(_ValidateSingUpData value) validateSignUpData,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LogOut value) logOut,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateSingInData value)? validateSignInData,
    TResult? Function(_ValidateSingUpData value)? validateSignUpData,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateSingInData value)? validateSignInData,
    TResult Function(_ValidateSingUpData value)? validateSignUpData,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGoogle implements AuthEvent {
  factory _LoginWithGoogle() = _$LoginWithGoogleImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateSignInData,
    required TResult Function() validateSignUpData,
    required TResult Function() loginWithGoogle,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateSignInData,
    TResult? Function()? validateSignUpData,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateSignInData,
    TResult Function()? validateSignUpData,
    TResult Function()? loginWithGoogle,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateSingInData value) validateSignInData,
    required TResult Function(_ValidateSingUpData value) validateSignUpData,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateSingInData value)? validateSignInData,
    TResult? Function(_ValidateSingUpData value)? validateSignUpData,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateSingInData value)? validateSignInData,
    TResult Function(_ValidateSingUpData value)? validateSignUpData,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  factory _LogOut() = _$LogOutImpl;
}
