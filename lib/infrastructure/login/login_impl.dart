import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/core/api_endpoints.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/login/login_service.dart';

import '../../domain/login/model/login_response/login_response.dart';

@LazySingleton(as: LoginService)
class LoginImpl implements LoginService {
  @override
  Future<Either<MainFailure, LoginResponse>> userLogin(
      {required String username, required String password}) async {
    try {
      var params = {
        "Username": username,
        "Password": password,
      };

      print(ApiEndpoints.login);
      final Response response = await Dio(BaseOptions()).post(
        ApiEndpoints.login,
        options: Options(
            headers: {HttpHeaders.connectionHeader: "application/json"}),
        data: jsonEncode(params),
      );
      log('response...${response.data.toString()}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    }
  }
}
