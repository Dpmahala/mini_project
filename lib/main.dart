import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_cripto/app_utils/colors.dart';
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
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Post Cripography',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: colorPrimary),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
          fontFamily: 'Poppins',
        ),
        home: const ResponsiveLayout(
          mobileScreen: MobileScreen(),
          webScreen: WebScreen(),
        ),
      ),
    );
  }
}
