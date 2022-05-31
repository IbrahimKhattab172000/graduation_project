// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyColors {
  static const kMaindarkColor = Color(0xFF102837);

  static const kMainLightColor = Color(0xFF1F506E);
  static const kSpecialMainColor = Color(0xFF385E75);
  static const kLightGray = Color(0xFF979797);
  static const kSpecialLightGreyColor = Color(0xFFccdbdc);
  static const kSpecialBetweenWhiteAndGrey = Color(0xFFf2e9e4);
  static const kExtraLightMainColor = Color(0xFF53798F);

  ///------------
  static const others1 = Color(0xFFE4E4E4);
  static const others2 = Color(0xFF707070);
  static const others3 = Color(0xFF979797);
}

const defaultDuration = Duration(milliseconds: 250);
const kAnimationDuration = Duration(milliseconds: 200);

validationEmail({required String value}) {
  if (value.isEmpty) {
    return "خخ بتضغط من غير ما تدخل ايميل ليه";
  }
}

validationPassword({required String value}) {
  if (value.isEmpty) {
    return 'باسوردك يا!';
  }
  if (value.length < 8) {
    return "مش اقل من 8 يسطا";
  }
}

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.h),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: MyColors.kSpecialBetweenWhiteAndGrey,
      width: 2,
    ),
  );
}
