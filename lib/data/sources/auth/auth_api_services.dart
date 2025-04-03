import 'package:dartz/dartz.dart';

abstract class AuthApiServices {
  Future<Either> signUp();
}

class AuthApiServicesImpl implements AuthApiServices {
  @override
  Future<Either> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}