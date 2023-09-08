import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';
import 'package:vansales/domain/stock/stock_service.dart';

part 'stock_event.dart';
part 'stock_state.dart';
part 'stock_bloc.freezed.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  final StockService _stockservice;

  StockBloc(this._stockservice) : super(StockState.initial()) {
    on<Initialize>((event, emit) {
      emit(
        const StockState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            stockresponse: null),
      );
    });

    on<Getstockinfo>((event, emit) async {
      emit(
        const StockState(
            isLoading: true,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            stockresponse: null),
      );

      final result = await _stockservice.getStock(
          branchId: event.branchId, bearerToken: event.bearerToken);
      print(result);

      final resultstate = result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            return const StockState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                stockresponse: null);
          } else {
            return const StockState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                stockresponse: null);
          }
        },
        (StockResponse response) {
          return StockState(
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
