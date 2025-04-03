import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

import '../../../core/common/helpers/navigation/app_navigator.dart';
import '../../../core/configs/theme/app_colors.dart';
import 'signin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signupText(),
            const SizedBox(height: 30),
            _emailTextField(),
            const SizedBox(height: 20),
            _passwordTextField(),
            const SizedBox(height: 60),
            _signupButton(),
            const SizedBox(height: 20),
            _signInText(context),
          ],
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return TextField(decoration: InputDecoration(labelText: 'Email'));
  }

  Widget _passwordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  Widget _signInText(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Already have an account? ',
        style: TextStyle(fontSize: 16),
        children: [
          TextSpan(
            text: 'Sign In',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle sign up tap
                    AppNavigator.push(
                      context,
                      const SigninScreen(), // Replace with your sign-up screen
                    );
                  },
          ),
        ],
      ),
    );
  }

  Widget _signupButton() {
    return ReactiveButton(
      title: 'Sign Up',
      activeColor: AppColors.primary,

      onPressed: () async {},
      onSuccess: () {
        // Handle success
      },
      onFailure: (error) async {
        // Handle failure
      },
    );
  }

  Widget _signupText() {
    return const Text(
      'Sign Up',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
