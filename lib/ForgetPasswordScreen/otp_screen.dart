import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:post_cripto/ForgetPasswordScreen/reset_password_screen.dart';
import 'package:post_cripto/app_utils/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 70,
      textStyle: const TextStyle(
          fontSize: 25,
          color: Color.fromRGBO(4, 28, 31, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: colorWhite,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: focusePinThemeColor),
      borderRadius: BorderRadius.circular(20),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: submitPinColor,
      ),
    );
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Center(
                child: Text(
                  'Enter your OTP',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Pinput(
                submittedPinTheme: submittedPinTheme,
                length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    'Verifiy OTP',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: colorPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't recive code? ",
                    style:
                        TextStyle(color: Colors.white60, fontFamily: 'Inter'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
