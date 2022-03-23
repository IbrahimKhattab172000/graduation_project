// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget manOrWoman({
  required double width,
  required double height,
  required double radius,
  required String image,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius.r),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius.r),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget inputRow({
  required String text,
  required String value,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          width: 48.w,
          height: 38.h,
          padding: EdgeInsets.all(5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: MyColors.kLightGray,
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget showYourFitness() {
  return Padding(
    padding: EdgeInsets.only(
      top: 5.h,
      bottom: 2.h,
      left: 20.h,
    ),
    child: Text(
      "Show you fitness",
      style: TextStyle(fontSize: 15.sp),
    ),
  );
}

Widget manOrWomanText({
  required String text,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: 20.sp,
      ),
    );
