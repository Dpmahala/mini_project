import 'package:flutter/material.dart';
import 'package:post_cripto/ForgetPasswordScreen/email_show_bar.dart';
import 'package:post_cripto/ForgetPasswordScreen/phone_show_bar.dart';
import 'package:post_cripto/app_utils/colors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Forget password',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: colorWhite,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Make Selection!',
            style: TextStyle(
              color: colorWhite,
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat',
            ),
          ),
          const Text(
            'Select one of the option given below to reset your password',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          const SizedBox(
            height: 30.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailShowBar(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: colorBoxGrey,
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.mail_outline_rounded,
                    size: 50.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Text(
                        'Reset via E-mail Verification',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PhoneShowBar()));
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: colorBoxGrey,
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.mobile_friendly_rounded,
                    size: 50.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat'),
                      ),
                      Text(
                        'Reset via Phone number Verification',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context);
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: colorBoxGrey,
              ),
              child: const Center(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
