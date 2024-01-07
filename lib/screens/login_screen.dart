import 'package:flutter/material.dart';
import 'package:post_cripto/ForgetPasswordScreen/forget_password_screen.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/app_utils/text_style.dart';
import 'package:post_cripto/screens/registration_screen.dart';
import 'package:post_cripto/widgets/button.dart';
import 'package:post_cripto/widgets/image_decoration.dart';
import 'package:post_cripto/widgets/input_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  void togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: MediaQuery.of(context).size.width > 550
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 3)
                : const EdgeInsets.symmetric(horizontal: 12.0),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                const Center(
                  child: Text(
                    'Welcome Back !',
                    style: TextStyle(
                        color: colorWhite,
                        fontFamily: 'Montserrat',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Center(
                  child: Text(
                    'Please login or sign up to continue using our app',
                    style: simpleText,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                InputField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  icon: Icons.email,
                  hintText: 'Enter your email',
                  lableText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  icon: Icons.lock,
                  hintText: 'Enter your password',
                  lableText: 'Password',
                  obscureText: _obscurePassword,
                  suffixIcon: _obscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onToggleVisibility: togglePasswordVisibility,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                color: colorPrimary,
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                              ),
                              child: const ForgetPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forget Password?',
                          style: simpleText,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an Account?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white60,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                      },
                      child: const Text(
                        ' Sign Up',
                        style: signupText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const LogInButton(),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          // thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            print('click google');
                          },
                          child: const SquareTile(
                            imagepath: 'images/google.png',
                            text: 'Google',
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('click phone');
                        },
                        child: const SquareTile(
                            imagepath: 'images/phone.png', text: 'Phone'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
