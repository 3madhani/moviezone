import 'package:get_it/get_it.dart';
import 'package:moviezone/core/network/dio_client.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // Registering the DioClient as a singleton
  // This means that the same instance will be used throughout the application
  sl.registerSingleton<DioClient>(DioClient());
}