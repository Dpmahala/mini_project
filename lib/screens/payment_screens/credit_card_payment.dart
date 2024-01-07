import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/payment_screens/widgets/card_back_screen.dart';
import 'package:post_cripto/screens/payment_screens/widgets/card_font_screen.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late FocusNode _cvvFocus;

  bool _showCardFront = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
        _controller.forward();
      });
  }

  void _toggleCardSide() {
    // Reset the animation controller
    _controller.reset();

    if (_showCardFront) {
      _controller.forward(); // Start animation
    } else {
      _controller.reverse(); // Reverse animation
    }

    setState(() {
      _showCardFront = !_showCardFront;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _cardNumber = '';
  String _cvvNumber = '';
  String _cardExpiry = '';
  late TextEditingController _cardNumberController,
      _cvvController,
      _expiryController;

  _CreditCardState() {
    _cardNumberController = TextEditingController();
    _cvvController = TextEditingController();
    _expiryController = TextEditingController();
    _cvvFocus = FocusNode();

    _expiryController.addListener(() {
      _cardExpiry = _expiryController.text;
      setState(() {});
    });

    _cardNumberController.addListener(() {
      _cardNumber = _cardNumberController.text;
      setState(() {});

      _cvvController.addListener(() {
        _cvvNumber = _cvvController.text;
        setState(() {});
      });

      _cvvFocus.addListener(() {
        _cvvFocus.hasFocus ? _controller.forward() : _controller.reverse();
      });
    });
  }

  String _formatExpiry(String input) {
    // Remove non-digits from input
    final cleanedInput = input.replaceAll(RegExp(r'\D'), '');

    // Format the input as MM/YY
    if (cleanedInput.length >= 3) {
      final formattedExpiry =
          '${cleanedInput.substring(0, 2)}/${cleanedInput.substring(2, cleanedInput.length > 4 ? 4 : cleanedInput.length)}';
      return formattedExpiry;
    }

    return cleanedInput;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text(
          'Credit Card',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _toggleCardSide();
                  },
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(pi * _animation.value),
                        origin:
                            Offset(MediaQuery.of(context).size.width / 2, 0),
                        child: _showCardFront
                            ? CardFontScreen(
                                cardNumber: _cardNumber,
                                cardExpiry: _cardExpiry,
                              )
                            : CardBackScreen(
                                cvvNumber: _cvvNumber,
                              ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _cardNumberController,
                  maxLength: 16,
                  decoration: const InputDecoration(hintText: 'Card Number'),
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Name on Card'),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: _expiryController,
                        onChanged: (text) {
                          final formattedExpiry = _formatExpiry(text);
                          _expiryController.value = TextEditingValue(
                            text: formattedExpiry,
                            selection: TextSelection.collapsed(
                              offset: formattedExpiry.length,
                            ),
                          );
                        },
                        decoration: const InputDecoration(
                          hintText: 'Expiry Date',
                        ),
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        focusNode: _cvvFocus,
                        maxLength: 3,
                        controller: _cvvController,
                        decoration: const InputDecoration(hintText: 'CVV'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6 * 12,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pay',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 18.h),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'INR 12,002',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14.h),
                      ),
                    ],
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
