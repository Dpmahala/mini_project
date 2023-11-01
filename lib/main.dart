import 'package:flutter/material.dart';
import 'package:post_cripto/layouts/mobile_screen_layout.dart';
import 'package:post_cripto/layouts/responsive_layout.dart';
import 'package:post_cripto/layouts/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Post Cripography',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(mobileScreen: MobileScreen(), webScreen: WebScreen(),),
    );
  }
}
