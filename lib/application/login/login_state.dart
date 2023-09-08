part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required bool isVisible,
      required LoginResponse? loginresponse}) = _LoginState;

  factory LoginState.initial() => const LoginState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      isVisible: false,
      loginresponse: null);
}
