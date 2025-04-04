import 'package:dartz/dartz.dart';
import 'package:moviezone/data/auth/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> signIn();
  Future<Either> signUp(SignupReqParams signupReqParams);
  Future<Either> signOut();
}