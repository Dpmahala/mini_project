import 'package:flutter/material.dart';
import 'package:post_cripto/screens/login_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:LoginScreen()
    );
  }
}
