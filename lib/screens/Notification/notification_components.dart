// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

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

Widget notificationTabBarItem({
  required String text,
}) {
  return Container(
    height: 45.h,
    width: 164.w,
    child: Center(
      child: Text(text),
    ),
  );
}

Widget notificationTabBarViewWidget() {
  return Padding(
    padding: EdgeInsets.all(8.0.h),
    child: Container(
      //*That's a dummy height and after filling the page with the elements
      //*..I should comment that height
      height: 605.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: MyColors.kSpecialLightGreyColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          //*Expanded here is important than you yasta
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => notificationWidget(),
              itemCount: 20,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    ),
  );
}
