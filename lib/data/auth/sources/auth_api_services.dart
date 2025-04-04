import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:moviezone/core/constants/api_url.dart';
import 'package:moviezone/data/auth/models/signup_req_params.dart';
import 'package:moviezone/service_locator.dart';

import '../../../core/network/dio_client.dart';

abstract class AuthApiServices {
  Future<Either> signUp(SignupReqParams signupReqParams);
}

class AuthApiServicesImpl implements AuthApiServices {
  @override
  Future<Either> signUp(SignupReqParams signupReqParams) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.signup,
        data: signupReqParams.toMap(),
      );
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
