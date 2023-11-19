// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class CardBackScreen extends StatefulWidget {
  final String cvvNumber;
  const CardBackScreen({
    Key? key,
    required this.cvvNumber,
  }) : super(key: key);

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
          color: Colors.greenAccent.shade400,
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
                      color: Colors.white38,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.cvvNumber,
                      style: const TextStyle(
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
                color: Colors.white70,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.white70,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.white70,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                color: Colors.white70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
