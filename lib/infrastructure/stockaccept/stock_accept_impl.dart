import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/core/api_endpoints.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';
import 'package:vansales/domain/stock/stock_service.dart';

import '../../domain/stockaccept/stock_accept_service.dart';

@LazySingleton(as: StockService)
class StockAcceptImpl implements StockAcceptService {
  @override
  Future<Either<MainFailure, StockResponse>> getStockAccept(
      {required String branchId,
      required String businessId,
      required String bearerToken}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
          "${ApiEndpoints.getStockAccept}?BranchID=$branchId&BusinessID=$businessId",
          options: Options(headers: {"authorization": "Bearer $bearerToken"}));
      log('response...${response.data.toString()}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = StockResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
