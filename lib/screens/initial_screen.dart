// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:graduation_project/screens/onboarding/onboarding_screen.dart';

import '../constants.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    //* Enter automatically to the upcoming screen after 10 sec
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kMaindarkColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                MyColors.kMaindarkColor,
                MyColors.kMainLightColor,
              ]),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/app.png",
                height: 196.h,
                width: 196.w,
                color: Colors.white,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Healthy Life",
                style: TextStyle(
                  fontSize: 42.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60.h,
              ),
              SpinKitSpinningLines(
                color: Colors.white,
                duration: Duration(seconds: 5),
                size: 150.r,
                lineWidth: 5.w,
                itemCount: 15,
              ),

              // CircularProgressIndicator(
              //   color: kSpecialBetweenWhiteAndGrey,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
