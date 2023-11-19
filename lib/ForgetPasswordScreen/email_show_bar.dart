import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';

import 'otp_screen.dart';

class EmailShowBar extends StatefulWidget {
  const EmailShowBar({super.key});

  @override
  State<EmailShowBar> createState() => _EmailShowBarState();
}

class _EmailShowBarState extends State<EmailShowBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context);
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: colorWhite,
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const Center(
              child: Text(
                'Forget Password',
                style: TextStyle(
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
            const Center(
              child: Text(
                'Enter your email and forget your password',
                style:
                    TextStyle(color: Colors.white54, fontFamily: 'Montserrat'),
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
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: colorWhite,
                          ),
                          fillColor: colorWhite,
                          hintText: 'Enter your E-mail',
                          hintStyle: const TextStyle(
                              color: colorsGrey, fontFamily: 'Montserrat'),
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                              color: colorWhite, fontFamily: 'Montserrat'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: colorWhite),
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(color: colorWhite))),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
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
                            fontFamily: 'Montserrat',
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
