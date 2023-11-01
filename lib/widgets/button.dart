import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
import 'package:post_cripto/screens/home_screen.dart';
import 'package:post_cripto/screens/login_screen.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({super.key});

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: colorWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Icon(
            Icons.login,
            color: colorPrimary,
          ),
        ],
      ),
    );
  }
}

class LogInButton extends StatefulWidget {
  const LogInButton({super.key});

  @override
  State<LogInButton> createState() => _LogInButtonState();
}

class _LogInButtonState extends State<LogInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: colorWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Icon(
            Icons.login,
            color: colorPrimary,
          ),
        ],
      ),
    );
  }
}
