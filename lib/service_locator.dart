import 'package:get_it/get_it.dart';
import 'package:moviezone/core/network/dio_client.dart';
import 'package:moviezone/domain/auth/repository/auth_repo.dart';
import 'package:moviezone/domain/auth/usecases/signup.dart';

import 'data/auth/repository/auth_repo_impl.dart';
import 'data/auth/sources/auth_api_services.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // Registering the DioClient as a singleton
  // This means that the same instance will be used throughout the application
  sl.registerSingleton<DioClient>(DioClient());

  // services
  sl.registerSingleton<AuthApiServices>(AuthApiServicesImpl());

  // repositories
  sl.registerSingleton<AuthRepository>(AuthRepoImpl());

  // Use cases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
