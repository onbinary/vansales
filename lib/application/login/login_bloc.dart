import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/login/login_service.dart';
import 'package:vansales/domain/login/model/login_response/login_response.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService _loginService;

  LoginBloc(this._loginService) : super(LoginState.initial()) {
    on<Initialize>((event, emit) {
      emit(
        const LoginState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            isVisible: false,
            loginresponse: null),
      );
    });

    on<Loginclick>((event, emit) async {
      emit(
        const LoginState(
            isLoading: true,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            isVisible: false,
            loginresponse: null),
      );
      final result = await _loginService.userLogin(
          username: event.username, password: event.password);

      print(result);

      final resultstate = result.fold((MainFailure f) {
        if (f is ClientFailure) {
          return const LoginState(
              isLoading: false,
              isServerError: false,
              isClientError: true,
              isAuthError: false,
              isVisible: false,
              loginresponse: null);
        } else {
          return const LoginState(
              isLoading: false,
              isServerError: true,
              isClientError: false,
              isAuthError: false,
              isVisible: false,
              loginresponse: null);
        }
      }, (LoginResponse response) {
        return LoginState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            isVisible: false,
            loginresponse: response);
      });

      emit(resultstate);
    });
  }
}
