// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:camera/camera.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/Notification/notification_screen.dart';
import 'package:graduation_project/screens/exercise/exercise_screen.dart';
import 'package:graduation_project/screens/home_screen/home_screen.dart';
import 'package:graduation_project/screens/market/market_screen.dart';
import 'package:graduation_project/screens/profile/profile_screen.dart';

import '../../constants.dart';
import '../../main.dart';
import '../../tensorflow/main_screen.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  //*The order is important yasta
  final items = <Widget>[
    Container(
      height: 30.h,
      width: 30.w,
      child: Image.asset(
        "assets/images/exercise.png",
        color: Colors.white,
      ),
    ),
    Container(
      height: 30.h,
      width: 30.w,
      child: Image.asset(
        "assets/images/market.png",
        color: Colors.white,
      ),
    ),
    Container(
      height: 30.h,
      width: 30.w,
      child: Image.asset(
        "assets/images/home.png",
        color: Colors.white,
      ),
    ),
    Container(
      height: 30.h,
      width: 30.w,
      child: Image.asset(
        "assets/images/notification.png",
        color: Colors.white,
      ),
    ),
    Container(
      height: 30.h,
      width: 30.w,
      child: Image.asset(
        "assets/images/profile.png",
        color: Colors.white,
      ),
    ),
  ];

//*The order is important yasta
  final screens = [
    ExerciseScreen(),
    MarketScreen(),
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

//*Default page
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*For the bottomNavbar
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        height: 70.h,
        items: items,
        index: index,
        backgroundColor: MyColors.kSpecialLightGreyColor,
        color: MyColors.kMainLightColor,
        animationCurve: Curves.easeInOut,
        onTap: (index) => setState(() => this.index = index),
      ),
      body: screens[index],
    );
  }
}
