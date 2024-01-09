import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/home_screen/home_screen.dart';
import 'package:post_cripto/screens/login_screen.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({super.key});

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
      child: Container(
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
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.login,
              color: colorPrimary,
            ),
          ],
        ),
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      child: Container(
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
              child: Text(
                'Log In',
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.login,
              color: colorPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
