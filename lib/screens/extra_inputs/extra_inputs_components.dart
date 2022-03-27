// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

//Todo: Adding some functionalities to extraInputMainWidget();

Widget extraInputMainWidget({
  required double width,
  double? height,
  required String text,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: 8.h,
      bottom: 8.h,
      right: 8.h,
      left: 8.h,
    ),
    height: height ?? 38.h,
    width: width,
    decoration: BoxDecoration(
      color: MyColors.kExtraInputs,
      borderRadius: BorderRadius.circular(22.r),
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.transparent,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.r),
        ),
      ),
      onPressed: () {},
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget mainTextInTheScreen({required String text}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}
