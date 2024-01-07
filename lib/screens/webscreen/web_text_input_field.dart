// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WebTextInputFeild extends StatelessWidget {
  const WebTextInputFeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    //  required this.lableText,
    required this.keyboardType,
    this.obscureText = false,
    // this.suffixIcon,
    //  this.onToggleVisibility,
    //  this.fontStyle,

    // required TextEditingController nameController,
    // required TextEditingController emailController,
    // required TextEditingController phoneNummberController,
    // required TextEditingController passwordController,
  });

  final TextEditingController controller;
  final String hintText;
  final keyboardType;
  final IconData icon;
  // final String lableText;
  final bool obscureText;
  // final IconData? suffixIcon;
  // final VoidCallback? onToggleVisibility;
  //final TextStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintText: hintText,
              prefixIcon: Icon(icon),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
      ],
    );
  }
}
