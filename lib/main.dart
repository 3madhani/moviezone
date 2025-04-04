import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviezone/presentation/splash/views/splash_screen.dart';
import 'package:moviezone/service_locator.dart';

import 'core/configs/theme/app_theme.dart';
import 'presentation/splash/bloc/cubit/splash_cubit_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize service locator
  setupServiceLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
