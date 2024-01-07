import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  final String text; // Add a text property

  const SquareTile({Key? key, required this.imagepath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(45),
            border: Border.all(color: Colors.white),
          ),
          child: Row(
            children: [
              Image.asset(
                imagepath,
                height: 30,
              ),
              const SizedBox(
                width: 18,
              ), // Add some spacing between the image and text
              Text(
                text,
                style: const TextStyle(
                    color: colorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'), // Adjust the style as needed
              ),
            ],
          ),
        ),
      ],
    );
  }
}
