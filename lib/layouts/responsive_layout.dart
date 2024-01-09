import 'package:flutter/material.dart';
import 'package:post_cripto/layouts/mobile_screen_layout.dart';
import 'package:post_cripto/layouts/web_screen_layout.dart';

class ResponsiveLayout extends StatefulWidget {
  final mobileScreen;
  final webScreen;
  const ResponsiveLayout(
      {super.key, required this.mobileScreen, required this.webScreen});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 550) {
      return const WebScreen();
    } else {
      return const MobileScreen();
    }
  }
}
