import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String method;
  final IconData icon;
  const CardWidget({
    Key? key,
    required this.image,
    required this.method,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      color: colorCard,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15)),
              child: Image(
                image: AssetImage(
                  image,
                ),
                height: 50,
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
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
