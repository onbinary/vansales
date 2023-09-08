import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/stock/model/stock_response/stock_response.dart';
import '../../domain/stockaccept/stock_accept_service.dart';

part 'acceptstock_event.dart';
part 'acceptstock_state.dart';
part 'acceptstock_bloc.freezed.dart';

class AcceptstockBloc extends Bloc<AcceptstockEvent, AcceptstockState> {
  final StockAcceptService _stockacceptservice;

  AcceptstockBloc(this._stockacceptservice)
      : super(AcceptstockState.initial()) {
    on<Initialize>((event, emit) {
      emit(
        const AcceptstockState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            stockresponse: null),
      );
    });

    on<AcceptStockList>((event, emit) async {
      emit(
        const AcceptstockState(
            isLoading: true,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            stockresponse: null),
      );

      final result = await _stockacceptservice.getStockAccept(
          branchId: event.branchId,
          businessId: event.businessId,
          bearerToken: event.bearerToken);
      print(result);

      final resultstate = result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            return const AcceptstockState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                stockresponse: null);
          } else {
            return const AcceptstockState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                stockresponse: null);
          }
        },
        (StockResponse response) {
          return AcceptstockState(
              isLoading: false,
              isServerError: true,
              isClientError: false,
              isAuthError: false,
              stockresponse: response);
        },
      );

      emit(resultstate);
    });
  }
}
