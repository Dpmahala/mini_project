import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/colors.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String method;
  final IconData icon;
  final double imageSize;
  final TextStyle? fontStyle;
  const CardWidget({
    Key? key,
    required this.image,
    required this.method,
    required this.icon,
    this.fontStyle,
    this.imageSize = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        elevation: 7,
        color: colorCard,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                elevation: 8,
                child: Container(
                  width: 40,
                  // height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    height: imageSize,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                method,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Card(
                  elevation: 7,
                  child: Icon(
                    icon,
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
