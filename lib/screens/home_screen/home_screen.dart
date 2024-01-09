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
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_2)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Card(
              elevation: 8,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, top: 2.h),
                      child: Text(
                        "Bank Accounts",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.h),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: 150.w,
                                decoration: BoxDecoration(
                                    color: paymentCardColor,
                                    borderRadius: BorderRadius.circular(4.r)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: 150.w,
                                decoration: BoxDecoration(
                                    color: paymentCardColor,
                                    borderRadius: BorderRadius.circular(4.r)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: 150.w,
                                decoration: BoxDecoration(
                                    color: paymentCardColor,
                                    borderRadius: BorderRadius.circular(4.r)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Money Transfer",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: mainHomeColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        width: 70.w,
                                        height: 70.h,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27.r)),
                                          color: Colors.white,
                                          child: ImageIcon(
                                            const AssetImage(
                                              'images/self_account.png',
                                            ),
                                            size: 10.h,
                                          ),
                                        )),
                                    Container(
                                        width: 70.w,
                                        height: 70.h,
                                        child: Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27.r)),
                                          child: Image.asset(
                                            'images/pay_number.png',
                                          ),
                                        )),
                                    Container(
                                        width: 70.w,
                                        height: 70.h,
                                        child: Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27.r)),
                                          child:
                                              Image.asset('images/pay_upi.png'),
                                        )),
                                    Container(
                                        width: 70.w,
                                        height: 70.h,
                                        child: Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27.r)),
                                          child: Image.asset(
                                              'images/bank_balance.png'),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '  To Self \n Account',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      ' Pay Phone \n Number',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      'Pay UPI\n  ID',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '   Bank \n Balance',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Bill & Reacharge",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 160.h,
                          decoration: BoxDecoration(
                              color: mainHomeColor,
                              borderRadius: BorderRadius.circular(5.r)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Bill & Reacharge",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 100.h,
                          decoration: BoxDecoration(
                              color: mainHomeColor,
                              borderRadius: BorderRadius.circular(5.r)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
