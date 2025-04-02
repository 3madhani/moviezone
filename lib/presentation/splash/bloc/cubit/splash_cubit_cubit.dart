import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_cubit_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashDisplay());

  void appStarted() async {
    // Simulate a delay for the splash screen
    await Future.delayed(const Duration(seconds: 3), () {
      // Emit the authenticated state after the delay
      emit(Unauthenticated());
    });
  }
}
