import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';

class PaymentFunction extends StatelessWidget {
  final IconData icons;

  const PaymentFunction({
    super.key,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 77,
        child: Card(
          color: homeScreenColor,
          elevation: 8,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icons,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
