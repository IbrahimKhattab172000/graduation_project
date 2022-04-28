import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget longText({required String text, context}) {
  return Center(
    child: Text(
      text,
      style: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.kMaindarkColor,
          ),
      // TextStyle(
      // fontSize: 16.sp,
      // fontWeight: FontWeight.w500,
      // color: MyColors.kMaindarkColor,
      // ),
    ),
  );
}

Widget loseWeightText({
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w500,
      color: MyColors.kMaindarkColor,
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
  required GestureTapCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height ?? 70.h,
      width: width ?? 70.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius ?? 22.r),
      ),
    ),
  );
}

Text chooseYourFitnessLevelText() {
  return Text(
    "Choose your fitness level",
    style: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w500,
      color: MyColors.kMaindarkColor,
    ),
  );
}
