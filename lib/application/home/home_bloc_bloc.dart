import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/home/home_service.dart';
import 'package:vansales/domain/home/model/userinfo_response/userinfo_response.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';
part 'home_bloc_bloc.freezed.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final HomeService _homeService;

  HomeBlocBloc(this._homeService) : super(HomeBlocState.initial()) {
    on<Initialize>((event, emit) {
      emit(
        const HomeBlocState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            userinfoResponse: null),
      );
    });

    on<FetchUser>((event, emit) async {
      emit(
        const HomeBlocState(
            isLoading: true,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            userinfoResponse: null),
      );

      final result = await _homeService.userInformation(
          userId: event.userId,
          businessId: event.businessId,
          bearerToken: event.bearerToken);

      final resultState = result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            return const HomeBlocState(
              isLoading: false,
              isServerError: false,
              isClientError: true,
              isAuthError: false,
              userinfoResponse: null,
            );
          } else {
            return const HomeBlocState(
              isLoading: false,
              isServerError: true,
              isClientError: false,
              isAuthError: false,
              userinfoResponse: null,
            );
          }
        },
        (UserinfoResponse response) {
          return HomeBlocState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            userinfoResponse: response,
          );
        },
      );
      emit(resultState);
    });
  }
}
