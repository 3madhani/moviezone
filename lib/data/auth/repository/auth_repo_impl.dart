import 'package:dartz/dartz.dart';

import '../../../domain/auth/repository/auth_repo.dart';
import '../../../service_locator.dart';
import '../models/signup_req_params.dart';
import '../sources/auth_api_services.dart';

class AuthRepoImpl extends AuthRepository {
  @override
  Future<Either> signIn( SignupReqParams signupReqParams) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(SignupReqParams signupReqParams) async {
    return await sl<AuthApiServices>().signUp(signupReqParams);
  }
}
