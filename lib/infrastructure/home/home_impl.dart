import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/core/api_endpoints.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/home/home_service.dart';
import 'package:vansales/domain/home/model/userinfo_response/userinfo_response.dart';
import 'package:vansales/domain/login/login_service.dart';

@LazySingleton(as: LoginService)
class HomeImpl implements HomeService {
  @override
  Future<Either<MainFailure, UserinfoResponse>> userInformation(
      {required String userId,
      required String businessId,
      required String bearerToken}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
          "${ApiEndpoints.userinfo}?UserId=$userId&BusinessId=$businessId",
          options: Options(headers: {"authorization": "Bearer $bearerToken"}));
      log('response...${response.data.toString()}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UserinfoResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
