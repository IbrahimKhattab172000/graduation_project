// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';

class OnboardingContent extends StatelessWidget {
  final String text, image, describtion;

  OnboardingContent({
    Key? key,
    required this.text,
    required this.image,
    required this.describtion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Spacer(),
        // Text(
        //   "Healthy Life",
        //   style: TextStyle(
        //     fontSize: 36.h,
        //     color: MyColors.kLightPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.all(10.0.h),
          child: Container(
            height: 275.h,
            width: 329.w,
            decoration: BoxDecoration(
              color: MyColors.kMainLightColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              image,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Text(
            text,
            style: TextStyle(
              color: MyColors.kMainLightColor,
              fontSize: 29.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          describtion,
          style: TextStyle(
            color: MyColors.kMainLightColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
