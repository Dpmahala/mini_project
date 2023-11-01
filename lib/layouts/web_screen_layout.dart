import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
import 'package:post_cripto/screens/login_screen.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colorPrimary,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: colorPrimary,
                height: height,
                child: const Center(
                  child: Text(
                    'Post Criptography',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: colorWhite,
              height: height,
              width: width,
              child: const LoginScreen(),
            )),
          ],
        ),
      ),
    );
  }
}
