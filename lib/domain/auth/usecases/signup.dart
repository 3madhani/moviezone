import 'package:dartz/dartz.dart';
import 'package:moviezone/core/usecase/usecase.dart';
import 'package:moviezone/data/auth/models/signup_req_params.dart';

import '../repository/auth_repo.dart';

class SignupUseCase extends UseCase<Either, SignupReqParams> {
  final AuthRepository authRepository;

  SignupUseCase({required this.authRepository});
  @override
  Future<Either> call({SignupReqParams? params}) async {
    return await authRepository.signUp(params!);
  }
}
