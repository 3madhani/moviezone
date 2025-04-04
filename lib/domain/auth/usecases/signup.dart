import 'package:dartz/dartz.dart';
import 'package:moviezone/core/usecase/usecase.dart';
import 'package:moviezone/data/auth/models/signup_req_params.dart';

import '../../../service_locator.dart';
import '../repository/auth_repo.dart';

class SignupUseCase extends UseCase<Either, SignupReqParams> {

  @override
  Future<Either> call({SignupReqParams? params}) async {
    return await sl<AuthRepository>().signUp(params!);
  }
}
