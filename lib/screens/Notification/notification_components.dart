import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget notificationWidget() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
    child: Container(
      width: 320.w,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
    ),
  );
}
