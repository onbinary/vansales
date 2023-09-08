import 'package:dartz/dartz.dart';
import 'package:vansales/domain/core/failures/main_failure.dart';
import 'package:vansales/domain/home/model/userinfo_response/userinfo_response.dart';

abstract class HomeService {
  Future<Either<MainFailure, UserinfoResponse>> userInformation(
      {required String userId,
      required String businessId,
      required String bearerToken});
}
