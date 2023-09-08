part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required UserinfoResponse? userinfoResponse}) = _HomeState;

  factory HomeBlocState.initial() => const HomeBlocState(
        isLoading: false,
        isServerError: false,
        isClientError: false,
        isAuthError: false,
        userinfoResponse: null,
      );
}
