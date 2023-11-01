import 'package:flutter/material.dart';
import 'package:post_cripto/ForgetPasswordScreen/otp_screen.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
import 'package:post_cripto/widgets/input_field_widget.dart';

class PhoneShowBar extends StatefulWidget {
  const PhoneShowBar({super.key});

  @override
  State<PhoneShowBar> createState() => _PhoneShowBarState();
}

class _PhoneShowBarState extends State<PhoneShowBar> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context);
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back, color: colorWhite),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const Center(
              child: Text(
                'Forget Password',
                style: TextStyle(
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0),
              ),
            ),
            const Center(
              child: Text(
                'Enter your phone number and forget your password',
                style: TextStyle(color: Colors.white54),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: InputField(
                      keyboardType: TextInputType.phone,
                      controller: phoneNumberController,
                      hintText: 'Enter your number',
                      icon: Icons.lock,
                      lableText: 'Phone',
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                    },
                    child: Container(
                       width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                          child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: colorPrimary),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
