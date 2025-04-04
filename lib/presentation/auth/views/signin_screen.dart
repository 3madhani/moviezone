import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moviezone/core/common/helpers/navigation/app_navigator.dart';
import 'package:moviezone/core/configs/theme/app_colors.dart';
import 'package:reactive_button/reactive_button.dart';

import 'signup_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signInText(),
            const SizedBox(height: 30),
            _emailTextField(),
            const SizedBox(height: 20),
            _passwordTextField(),
            const SizedBox(height: 60),
            _signInButton(),
            const SizedBox(height: 20),
            _signupText(context),
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

  Widget _signInButton() {
    return ReactiveButton(
      title: 'Sign In',
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

  Widget _signInText() {
    return const Text(
      'Sign In',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _signupText(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Don\'t have an account? ',
        style: TextStyle(fontSize: 16),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle sign up tap
                    AppNavigator.push(
                      context,
                       SignupScreen(), // Replace with your sign-up screen
                    );
                  },
          ),
        ],
      ),
    );
  }
}
