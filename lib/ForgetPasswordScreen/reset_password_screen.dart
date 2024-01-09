import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/login_screen.dart';
import 'package:post_cripto/widgets/input_field_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({
    super.key,
  });

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _obscurePassword = true;
  bool _obscureNewPassword = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  void togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void toggleNewPasswordVisibility() {
    setState(() {
      _obscureNewPassword = !_obscureNewPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Center(
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 35.0.h,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Text(
                'Set new password',
                style: TextStyle(
                    color: colorWhite, fontSize: 15.sp, fontFamily: 'Inter'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              InputField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                hintText: 'Enter your new password',
                icon: Icons.lock,
                lableText: 'Password',
                obscureText: _obscurePassword,
                suffixIcon:
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                onToggleVisibility: togglePasswordVisibility,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InputField(
                keyboardType: TextInputType.visiblePassword,
                controller: newPasswordController,
                hintText: 'Confirm your new password',
                icon: Icons.lock,
                lableText: 'Confirm Password',
                obscureText: _obscureNewPassword,
                suffixIcon: _obscureNewPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
                onToggleVisibility: toggleNewPasswordVisibility,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50.h,
                decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: colorPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0.h),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
