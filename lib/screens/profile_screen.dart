import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
import 'package:post_cripto/screens/payment_screens/payment_method_screen.dart';
import 'package:post_cripto/widgets/cardwidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/020/765/399/non_2x/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg',
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 75,
                    child: GestureDetector(
                      onTap: () {
                        print('Click add photo');
                      },
                      child: const Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Dwarka Prasad',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentMethodScreen(),
                    ),
                  );
                },
                child: const CardWidget(
                  image: 'images/paymentmethod.png',
                  method: 'Payment Methods',
                  imageSize: 38,
                  icon: Icons.arrow_forward_ios,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  print('payment method click');
                },
                child: const CardWidget(
                  image: 'images/qr-code.png',
                  method: 'QR codes',
                  imageSize: 35,
                  icon: Icons.arrow_forward_ios,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  print('payment method click');
                },
                child: const CardWidget(
                  image: 'images/fingerprint.png',
                  method: 'Screeen Lock',
                  imageSize: 35,
                  icon: Icons.arrow_forward_ios,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  print('payment method click');
                },
                child: const CardWidget(
                  image: 'images/logout.png',
                  method: 'LogOut',
                  imageSize: 35,
                  icon: Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
