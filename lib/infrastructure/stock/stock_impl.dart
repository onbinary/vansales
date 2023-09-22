import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/core/api_endpoints.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/stock/model/stock_response/stock_response.dart';
import 'package:vansales/domain/stock/stock_service.dart';

@LazySingleton(as: StockService)
class StockImpl implements StockService {
  @override
  Future<Either<MainFailure, List<StockResponse>>> getStock(
      {required String branchId, required String bearerToken}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
          "${ApiEndpoints.getStock}?BranchID=$branchId",
          options: Options(headers: {"authorization": "Bearer $bearerToken"}));

      //  log('response...${ApiEndpoints.getStock}?BranchID=$branchId');
      log('response...${response.statusCode}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = (response.data as List).map((e) {
          return StockResponse.fromJson(e);
        }).toList();
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("exception${e}");
      return const Left(MainFailure.clientFailure());
    }
  }
}
