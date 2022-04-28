// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget helloUserPart() {
  return ListTile(
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        // CupertinoIcons.person_circle_fill,
        Icons.person_pin,
        color: MyColors.kMainLightColor,
        size: 65.w,
      ),
    ),
    horizontalTitleGap: 30.w,
    subtitle: Text(
      'Hello User',
      style: TextStyle(fontSize: 15.sp),
    ),
  );
}

Widget exerciseTabBarItem({required Widget widget}) {
  return Container(
    height: 50.h,
    width: 120.w,
    padding: EdgeInsets.all(5.w),
    child: Center(child: widget),
  );
}

Widget borderRoundedContainer({
  required Widget widget,
}) {
  return Container(
    height: 40.w,
    width: 40.w,
    padding: EdgeInsets.all(5.h),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: MyColors.kLightGray,
        width: 1.w,
      ),
    ),
    child: widget,
  );
}

Widget widelyUsedText({
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize ?? 23.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: MyColors.kMainLightColor,
    ),
  );
}

Widget progressLine() {
  return Container(
    margin: EdgeInsets.all(8),
    height: 5,
    width: 100,
    // color: MyColors.kSpecialBetweenWhiteAndGrey,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
    child: Row(
      children: [
        Container(
          height: 5,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: MyColors.kMainLightColor,
          ),
        ),
        Container(
          height: 5,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: MyColors.kSpecialBetweenWhiteAndGrey,
          ),
        ),
      ],
    ),
  );
}

Widget seperatedVirticalLine() {
  return Container(
    margin: EdgeInsets.all(8),
    height: 70,
    width: .5,
    color: Colors.black,
  );
}

Widget descriptionalText({
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(
      color: MyColors.kLightGray,
      fontSize: 14.sp,
    ),
  );
}

Widget shortLine({
  required Color? color,
}) {
  return Container(
    margin: EdgeInsets.all(2.r),
    height: 1.5.h,
    width: 20.w,
    color: color,
  );
}

Widget bodyWidget({
  required String imageSrc,
}) {
  return Container(
    height: 290.h,
    width: 350.w,
    decoration: BoxDecoration(
      border: Border.all(
        color: MyColors.kExtraLightMainColor,
        width: 20.w,
      ),
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      imageSrc,
      fit: BoxFit.fill,
    ),
  );
}

Widget frontAndBackWidget({
  required Color color,
  required String text,
  required Color textColor,
}) {
  return Container(
    height: 50.h,
    width: 90.w,
    padding: EdgeInsets.all(8.h),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(
        color: MyColors.kExtraLightMainColor,
        width: 5.w,
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17.sp,
          color: textColor,
        ),
      ),
    ),
  );
}
