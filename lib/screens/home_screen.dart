import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:post_cripto/app_utils/colors.dart';
import 'package:post_cripto/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Color Curv = mainHomeColor;
    var txt = "Home Page";
    return Scaffold(
        backgroundColor: mainHomeColor,
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
                Curv = homeScreenColor;
                txt = "History";
              }
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: appBarColor.withOpacity(.9),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
            child: Padding(
                padding: EdgeInsets.only(left: 6.r),
                child: CircleAvatar(
                  backgroundColor: mainHomeColor.withOpacity(.6),
                  child: ImageIcon(
                    const AssetImage(
                      'images/person.png',
                    ),
                    color: Colors.white,
                    size: 25.h,
                  ),
                )),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dwarka Prasad',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  fontSize: 13.h,
                ),
              ),
              Text(
                'Pondicherry University',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 10.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100.h,
              child: Expanded(
                  flex: 1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        child: Container(
                          width: 150.w,
                          height: 10,
                          decoration: BoxDecoration(
                              color: paymentCardColor,
                              borderRadius: BorderRadius.circular(7.r)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 7.h),
                        child: Container(
                          width: 150.w,
                          height: 10,
                          decoration: BoxDecoration(
                              color: paymentCardColor,
                              borderRadius: BorderRadius.circular(7.r)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        child: Container(
                          width: 150.w,
                          height: 10,
                          decoration: BoxDecoration(
                              color: paymentCardColor,
                              borderRadius: BorderRadius.circular(7.r)),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
