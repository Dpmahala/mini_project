import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';

class CardFontScreen extends StatelessWidget {
  const CardFontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 500,
      child: Card(
        color: borderColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'images/visa.png',
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Use FadeTransition to animate opacity
              FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent:
                        ModalRoute.of(context)?.animation as Animation<double>,
                    curve: Curves.easeInOut,
                  ),
                ),
                child: const Text(
                  '1234 5678 9102 7894',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(-2, -1))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              // Use FadeTransition for card holder details
              FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent:
                        ModalRoute.of(context)?.animation as Animation<double>,
                    curve: Curves.easeInOut,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Card Holder',
                        ),
                        Text(
                          'Dwarka Prasad',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Expiry'),
                        Text(
                          '11/02',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
