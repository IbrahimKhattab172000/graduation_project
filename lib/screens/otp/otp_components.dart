// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget resendText() {
  return Text(
    "Resend code",
    style: TextStyle(
      color: MyColors.kLightGray,
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,

      ///*To drow a line under the text
      decoration: TextDecoration.underline,
    ),
  );
}

Widget digitalCode({
  // bool? autofocus,
  // bool? obscureText,
  // TextInputType? keyboardType,
  // TextAlign? textAlign,
  // TextStyle? style,
  // Function(String value)? onChanged,
  // FocusNode? focusNode,
  required Widget child,
}) {
  return Padding(
    padding: EdgeInsets.all(8.0.h),
    child: Container(
      width: 45.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: MyColors.kSpecialBetweenWhiteAndGrey,
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.r,
            color: MyColors.kSpecialBetweenWhiteAndGrey,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: child,
      // child: TextFormField(
      //   autofocus: autofocus!,
      //   obscureText: obscureText!,
      //   keyboardType: keyboardType!,
      //   textAlign: textAlign!,
      //   style: style,
      //   onChanged: onChanged,
      //   focusNode: focusNode,
      // ),
    ),
  );
}

Widget columnForMainTextWidgets() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Verify Your Email",
        style: TextStyle(
          fontSize: 29.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        "Please Enter the 4 digital code sent to your email ",
        style: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

Widget mailBoxWidget() {
  return Container(
    padding: EdgeInsets.all(20.h),
    width: 313.w,
    height: 208.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.r),
    ),
    child: Image.asset("assets/images/mailbox.png"),
  );
}
