part of 'acceptstock_bloc.dart';

@freezed
class AcceptstockEvent with _$AcceptstockEvent {
  const factory AcceptstockEvent.initialize() = Initialize;
  const factory AcceptstockEvent.acceptstocklist(
      {required String branchId,
      required String businessId,
      required String bearerToken}) = AcceptStockList;
}
