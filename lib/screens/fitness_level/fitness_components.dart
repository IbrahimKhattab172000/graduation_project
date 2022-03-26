import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget longText() {
  return Center(
    child: Text(
      "Muscle Building exercises help lose fat\n                  and improve body",
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget loseWeightText() {
  return Text(
    "Lose Weight",
    style: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget trueWidget() {
  return Align(
    alignment: Alignment.center,
    child: Container(
      //* I'm using "h" for both width and height to get more rounded shape
      height: 56.h,
      width: 56.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Image.asset(
        "assets/images/true.png",
      ),
    ),
  );
}

Widget determineYourfitnessLevelWidget({
  double? height,
  double? width,
  double? radius,
  Color? color,
}) {
  return Container(
    height: height ?? 70.h,
    width: width ?? 70.w,
    decoration: BoxDecoration(
      color: color ?? MyColors.kSpecialPrimary,
      borderRadius: BorderRadius.circular(radius ?? 22.r),
    ),
  );
}

Text chooseYourFitnessLevelText() {
  return Text(
    "Choose your fitness level",
    style: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w400,
    ),
  );
}
