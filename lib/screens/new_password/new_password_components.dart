import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';

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

Widget columnForMainTextWidgetsNewPassword(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Create New Password",
        style: TextStyle(
          fontSize: 29.sp,
          fontWeight: FontWeight.w500,
          color: MyColors.kMaindarkColor,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        "      Please Enter your new password",
        style: Theme.of(context).textTheme.caption!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: MyColors.kMaindarkColor,
            ),
        // TextStyle(
        //   fontSize: 19.sp,
        //   fontWeight: FontWeight.w400,
        // ),
      ),
    ],
  );
}
