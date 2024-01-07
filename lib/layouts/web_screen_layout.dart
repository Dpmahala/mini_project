import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/webscreen/web_login_screen.dart';

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
    int _currentIndex = 0;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: colorPrimary,
            gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [
                  Color.fromARGB(255, 103, 26, 190),
                  Color.fromARGB(255, 155, 20, 193),
                  Color.fromARGB(255, 255, 80, 255),
                ]),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Post Criptography',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 500,
                      height: 900,
                      margin: const EdgeInsets.all(50),
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          elevation: 8,
                          color: const Color.fromARGB(255, 239, 233, 233),
                          child: Column(
                            children: [
                              // const Expanded(
                              //   child: SizedBox(
                              //     height: 45,
                              //   ),
                              // ),
                              IndexedStack(
                                index: _currentIndex,
                                children: [
                                  WebLoginScreen(onPressed: () {
                                    setState(() {
                                      _currentIndex = 1;
                                    });
                                  }),
                                  // WebSignUpScreen(onPressed: () {
                                  //   setState(() {
                                  //     _currentIndex = 0;
                                  //   });
                                  // }),
                                ],
                              )
                            ],
                          )),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
