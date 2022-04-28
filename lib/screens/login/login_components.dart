// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/signup/signup_screen.dart';

import '../../constants.dart';
import '../forget_password/forget_password_screen.dart';

Row otherLoginApproachs() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      socialCard(
        assetsPath: "assets/images/facebook.jpg",
        onTap: () {},
      ),
      socialCard(
        assetsPath: "assets/images/twitter.jpg",
        onTap: () {},
      ),
      socialCard(
        assetsPath: "assets/images/google1.jpg",
        onTap: () {},
      ),
    ],
  );
}

Widget socialCard({
  required String assetsPath,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50.h,
      width: 50.w,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: MyColors.kLightGray,
            blurRadius: 2.0.r,
            spreadRadius: 0.0.r,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: ClipRRect(
        ///I'm using ClipRRect & assigning borderRadius to it to make sure that
        ///.. whatever pic we put it will be clipped
        borderRadius: BorderRadius.circular(30.r),
        child: Image.asset(assetsPath),
      ),
    ),
  );
}

GestureDetector signupHere(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ),
      );
    },
    child: Text(
      "Sign up here",
      style: TextStyle(
        fontSize: 13.sp,
        color: MyColors.kMaindarkColor,
      ),
    ),
  );
}

Padding forgetPassword(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(8.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ForgetPassword(),
                ),
              );
            },
            child: Text(
              "Forget password?",
              style: TextStyle(
                fontSize: 14.sp,
                color: MyColors.kLightGray,
              ),
            )),
      ],
    ),
  );
}

Widget orLoginWithText() {
  return Padding(
    padding: EdgeInsets.all(10.0.h),
    child: Text(
      "Or log in with",
      style: TextStyle(
        color: MyColors.kLightGray,
        fontSize: 13.h,
      ),
    ),
  );
}

Widget dontHaveAccText() {
  return Text(
    "Don't have an account?",
    style: TextStyle(
      color: MyColors.kLightGray,
    ),
  );
}

Widget loginText() {
  return Text(
    "Login",
    style: TextStyle(
      color: MyColors.kMaindarkColor,
      fontSize: 30.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget smallLine() {
  return Container(
    height: 1.h,
    width: 94.w,
    decoration: BoxDecoration(
      color: MyColors.kSpecialBetweenWhiteAndGrey,
    ),
  );
}
