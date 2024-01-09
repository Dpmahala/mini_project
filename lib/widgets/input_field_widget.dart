import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.lableText,
    required this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.onToggleVisibility,
    this.fontStyle,

    // required TextEditingController nameController,
    // required TextEditingController emailController,
    // required TextEditingController phoneNummberController,
    // required TextEditingController passwordController,
  });

  final TextEditingController controller;
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;
  final IconData icon;
  final String lableText;
  final bool obscureText;
  final IconData? suffixIcon;
  final VoidCallback? onToggleVisibility;
  final TextStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        style: const TextStyle(
          fontFamily: 'Inter',
          color: colorWhite,
        ),
        cursorColor: colorWhite,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            icon,
            size: 25.0,
            color: colorWhite,
          ),
          labelText: lableText,
          labelStyle:
              const TextStyle(color: colorsGrey, fontFamily: 'Montserrat'),
          focusColor: colorWhite,
          hintText: hintText,
          hintStyle: const TextStyle(color: colorsGrey),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: colorWhite, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: colorWhite)),
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  onTap: onToggleVisibility,
                  child: Icon(
                    suffixIcon,
                    color: Colors.white,
                    size: 22,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
