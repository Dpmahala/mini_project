import 'dart:math';

import 'package:flutter/material.dart';

import '../../../app_utils/app_utils.dart';

class CardBackScreen extends StatefulWidget {
  const CardBackScreen({super.key});

  @override
  State<CardBackScreen> createState() => _CardBackScreenState();
}

class _CardBackScreenState extends State<CardBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(-pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: SizedBox(
        width: 500,
        height: 300,
        child: Card(
          margin: const EdgeInsets.all(16),
          color: borderColor,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent:
                        ModalRoute.of(context)?.animation as Animation<double>,
                    curve: Curves.easeInOut,
                  ),
                ),
                child: Container(
                  height: 60,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Use FadeTransition for card details
              FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent:
                        ModalRoute.of(context)?.animation as Animation<double>,
                    curve: Curves.easeInOut,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 200,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '234',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 15,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
