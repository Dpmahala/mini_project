import 'package:flutter/material.dart';

class CardFontScreen extends StatelessWidget {
  final String cardNumber;
  final String cardExpiry;

  CardFontScreen({Key? key, required this.cardNumber, required this.cardExpiry})
      : super(key: key) {
    _formattedCardNumber = this.cardNumber.padRight(16, 'X');
    _formattedCardNumber = _formattedCardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");

    _formattedCardExpiry = cardExpiry.padRight(4, '0');
    _formattedCardExpiry = _formattedCardExpiry.replaceFirstMapped(
      RegExp(r"(\d{2})(\d{2})"),
      (match) => "${match[1]}/${match[2]}",
    );
  }

  late String _formattedCardNumber;
  late String _formattedCardExpiry;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 500,
      child: Card(
        color: Colors.greenAccent.shade400,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'images/visa.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Bank of India',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
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
                child: Text(
                  _formattedCardNumber,
                  textAlign: TextAlign.start,
                  maxLines: 16,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2, 1),
                      ),
                    ],
                  ),
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
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
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Expiry'),
                        Text(
                          _formattedCardExpiry,
                          style: const TextStyle(fontWeight: FontWeight.w500),
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
