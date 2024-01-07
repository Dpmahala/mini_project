import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/login_screen.dart';
import 'package:post_cripto/widgets/button.dart';
import 'package:post_cripto/widgets/image_decoration.dart';
import 'package:post_cripto/widgets/input_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Create new account !',
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
                    'Please enter your information',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: colorWhite,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                InputField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  icon: Icons.person,
                  hintText: 'Enter your name',
                  lableText: 'Name',
                ),
                const SizedBox(
                  height: 20,
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
                  keyboardType: TextInputType.phone,
                  controller: phoneNumberController,
                  icon: Icons.phone_android,
                  hintText: 'Enter your phone number',
                  lableText: 'Phone',
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: Colors.white60, fontFamily: 'Montserrat'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        ' LogIn',
                        style: TextStyle(
                          color: colorWhite,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignUpButton(),
                const SizedBox(
                  height: 35,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                            color: colorWhite,
                            fontFamily: 'Montserrat',
                          ),
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
                  height: 30.0,
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
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('click phone');
                        },
                        child: const SquareTile(
                          imagepath: 'images/phone.png',
                          text: 'Phone',
                        ),
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
