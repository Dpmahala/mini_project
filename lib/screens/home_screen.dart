import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text(
          'Home page',
          style: TextStyle(color: colorWhite, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(child: Container()),
      drawer: const Drawer(backgroundColor: Colors.deepPurple),
    );
  }
}
