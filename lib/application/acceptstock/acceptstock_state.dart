part of 'acceptstock_bloc.dart';

@freezed
class AcceptstockState with _$AcceptstockState {
  const factory AcceptstockState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required StockResponse? stockresponse}) = _AcceptStockListState;

  factory AcceptstockState.initial() => const AcceptstockState(
        isLoading: false,
        isServerError: false,
        isClientError: false,
        isAuthError: false,
        stockresponse: null,
      );
}
