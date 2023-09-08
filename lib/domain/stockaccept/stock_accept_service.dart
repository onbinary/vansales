import 'package:dartz/dartz.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';

abstract class StockAcceptService {
  Future<Either<MainFailure, StockResponse>> getStockAccept(
      {required String branchId,
      required String businessId,
      required String bearerToken});
}
