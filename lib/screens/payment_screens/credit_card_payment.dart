import 'dart:math';

import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
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

  bool _showCardFront = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text(
          'Credit Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _toggleCardSide();
          },
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(_showCardFront
                      ? 0
                      : pi *
                          _animation
                              .value), // Apply rotation based on animation value
                origin: Offset(MediaQuery.of(context).size.width / 2, 0),
                child: _showCardFront
                    ? const CardFontScreen()
                    : const CardBackScreen(),
              );
            },
          ),
        ),
      ),
    );
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
}
