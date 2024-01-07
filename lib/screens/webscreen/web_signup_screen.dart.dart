// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:post_cripto/screens/webscreen/web_text_input_field.dart';

class WebSignUpScreen extends StatelessWidget {
  final VoidCallback onPressed;
  WebSignUpScreen({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          const Text(
            'Log In',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          WebTextInputFeild(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Eamil',
            icon: Icons.email,
          ),
          const SizedBox(
            height: 20,
          ),
          WebTextInputFeild(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          WebTextInputFeild(
            controller: confirmPasswordController,
            keyboardType: TextInputType.visiblePassword,
            hintText: 'Confirm Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              width: double.infinity,
              height: 35,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Color.fromARGB(255, 255, 80, 255),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Continue with',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Color(0xff1fb141),
                  elevation: 5,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Color(0xff1fb141),
                  elevation: 5,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Color(0xff1fb141),
                  elevation: 5,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Other way',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
