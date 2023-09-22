part of 'stock_bloc.dart';

@freezed
class StockState with _$StockState {
  const factory StockState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required List<StockResponse> stockresponse}) = _StockState;

  factory StockState.initial() => const StockState(
        isLoading: false,
        isServerError: false,
        isClientError: false,
        isAuthError: false,
        stockresponse: [],
      );
}
