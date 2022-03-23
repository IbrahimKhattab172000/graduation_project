// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/login/login_screen.dart';
import 'package:graduation_project/screens/onboarding/onboarding_body.dart';
import 'package:graduation_project/shared/shared_components.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Healthy Life",
          style: TextStyle(
            color: MyColors.kLightPrimaryColor,
            fontSize: 35.sp,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0.h),
            child: IconButton(
              onPressed: () {
                navigateAndFinish(
                  context,
                  LoginScreen(),
                );
              },
              icon: Container(
                width: 50.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: MyColors.kLightPrimaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: OnboardingBody(),
    );
  }
}
