// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/text_style.dart';
import 'package:post_cripto/screens/webscreen/web_text_input_field.dart';

class WebLoginScreen extends StatelessWidget {
  final VoidCallback onPressed;

  WebLoginScreen({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 35.0),
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
            height: 30,
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
            height: 10,
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                onTap: () {},
                child: const Text('Forget Password? ', style: webText)),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: const SizedBox(
              width: double.infinity,
              height: 35,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Color.fromARGB(255, 255, 80, 255),
                child: Center(
                  child: Text(
                    'Log in',
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
            height: 25,
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
                      'Another way',
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
