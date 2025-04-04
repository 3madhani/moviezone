import 'package:dartz/dartz.dart';

import '../../../domain/auth/repository/auth_repo.dart';
import '../models/signup_req_params.dart';
import '../sources/auth_api_services.dart';

class AuthRepoImpl extends AuthRepository {

  AuthApiServices authApiServices;

  AuthRepoImpl({ required this.authApiServices});
  @override
  Future<Either> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp( SignupReqParams signupReqParams) async {
    return await authApiServices.signUp(signupReqParams);
  }

}