import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviezone/core/assets/app_images.dart';
import 'package:moviezone/core/common/helpers/navigation/app_navigator.dart';
import 'package:moviezone/presentation/auth/views/signin_screen.dart';
import 'package:moviezone/presentation/home/views/home_screen.dart';

import '../bloc/cubit/splash_cubit_cubit.dart';
import '../bloc/cubit/splash_cubit_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Unauthenticated) {
            AppNavigator.pushReplacement(context, SigninScreen());
          } else if (state is Authenticated) {
            AppNavigator.pushReplacement(context, HomeScreen());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBackground),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1A1B20).withOpacity(0), Color(0xFF1A1B20)],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
