import 'package:dartz/dartz.dart';
import 'package:moviezone/data/auth/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> signIn(SignupReqParams signupReqParams);
  Future<Either> signOut();
  Future<Either> signUp(SignupReqParams signupReqParams);
}
