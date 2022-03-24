import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget securityWidget() {
  return Container(
    padding: EdgeInsets.all(20.h),
    width: 313.w,
    height: 208.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.r),
    ),
    child: Image.asset("assets/images/security.png"),
  );
}

Widget columnForMainTextWidgetsNewPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Create New Password",
        style: TextStyle(
          fontSize: 29.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        "Please Enter your new password",
        style: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
