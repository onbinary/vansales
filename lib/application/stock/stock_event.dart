part of 'stock_bloc.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.initialize() = Initialize;
  const factory StockEvent.getstockinfio(
      {required String branchId, required String bearerToken}) = Getstockinfo;
}
