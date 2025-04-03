import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signIn();
  Future<Either> signUp();
  Future<Either> signOut();
}