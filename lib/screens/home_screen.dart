import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:post_cripto/app_utils/app_utils.dart';
import 'package:post_cripto/screens/profile_screen.dart';
import 'package:post_cripto/widgets/functions/payment_function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Color Curv = homeScreenColor;
    var txt = "Home Page";
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            size: 35,
          ),

          //Icon(Icons.login),
          Icon(
            Icons.person,
            size: 35,
          ),
          Icon(
            Icons.storefront_outlined,
            size: 35,
          ),
          Icon(
            Icons.history,
            size: 35,
          ),
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              Curv = homeScreenColor;
              txt = "Home";
            }
            if (index == 1) {
              Curv = homeScreenColor;
              txt = "Profile";
            }
            if (index == 2) {
              Curv = homeScreenColor;
              txt = "Store";
            }
            if (index == 3) {
              // Curv = homeScreenColor;
              // txt = "History";
            }
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: colorPrimary,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ));
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ImageIcon(
                  AssetImage(
                    'images/person.png',
                  ),
                  size: 35,
                ),
              )),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dwarka Prasad',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
                fontSize: 18,
              ),
            ),
            Text(
              'Pondicherry Univercity',
              style: TextStyle(
                  color: Colors.cyan, fontSize: 14, fontFamily: 'Montserrat'),
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentFunction(
                        icons: Icons.qr_code_scanner,
                      ),
                      PaymentFunction(
                        icons: Icons.contact_page_rounded,
                      ),
                      PaymentFunction(
                        icons: Icons.qr_code_scanner,
                      ),
                      PaymentFunction(
                        icons: Icons.qr_code_scanner,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'QR Scanner',
                          style: functionText,
                        ),
                        Text(
                          'QR Scanner',
                          style: functionText,
                        ),
                        Text(
                          'QR Scanner',
                          style: functionText,
                        ),
                        Text(
                          'QR Scanner',
                          style: functionText,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentFunction(
                        icons: Icons.qr_code_scanner,
                      ),
                      PaymentFunction(
                        icons: Icons.contact_page_rounded,
                      ),
                      PaymentFunction(
                        icons: Icons.contacts_outlined,
                      ),
                      PaymentFunction(
                        icons: Icons.account_balance_outlined,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pay UPI\n  ID',
                          style: functionText,
                        ),
                        Text(
                          'Pay Bills',
                          style: functionText,
                        ),
                        Text(
                          'Contact',
                          style: functionText,
                        ),
                        Text(
                          ' Bank\nBalance',
                          style: functionText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
