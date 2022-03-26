// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

AppBar simpleAppBar(
  BuildContext context, {
  IconData? icon,
  Color? iconColor,
  double? iconSize,
  Color? appBarColor,
  String? title,
  bool showArrowBack = true,
}) {
  return AppBar(
    ///*Because we will have an exception for the login screen
    leading: showArrowBack
        ? IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              icon ?? Icons.arrow_back_ios,
              size: iconSize ?? 25.w,
              color: iconColor ?? Colors.white,
            ),
          )
        : Container(),

    backgroundColor: appBarColor ?? MyColors.kLightPrimaryColor,
    title: Text(
      title ?? "Healthy Life",
      style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    elevation: 0,
  );
}

Container roundedContainer({
  required Widget child,
  double? width,
  double? height,
  Color? color,
  double? radius,
}) {
  return Container(
    padding: EdgeInsets.all(20.h),
    width: width ?? double.infinity,
    height: height ?? 650.h,
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius ?? 30.r),
        topRight: Radius.circular(radius ?? 30.r),
      ),
    ),
    child: child,
  );
}

Container mainContainerWidelySpread({
  required Widget child,
}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: MyColors.kLightPrimaryColor,
    child: child,
  );
}

Widget textBeforeEachTextFormField({required String text}) {
  return Padding(
    padding: EdgeInsets.all(8.0.h),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget defaultButton({
  double width = double.infinity,
  Color? background,
  bool isUpperCase = true,
  double radius = 0.0,
  double height = 40.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      child: MaterialButton(
        elevation: 30,
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius + 10),
        color: background ?? MyColors.kLightPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: MyColors.kSpecialBetweenWhiteAndGrey,
            blurRadius: 2.0.r,
            spreadRadius: 0.0.r,
            offset: Offset(5.0, 5.0), // shadow direction: bottom right
          )
        ],
      ),
    );

Widget textFormField({
  required String labelText,
  required String hintText,
  required Widget prefixWidget,
  Widget? suffixWidget,
  bool isPassword = false,
  //  IconData? icon,
}) {
  return Material(
    borderRadius: BorderRadius.circular(15),
    elevation: 10,
    shadowColor: MyColors.kLightGray,
    child: TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: InputBorder.none,
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(color: MyColors.kLightGray),
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        contentPadding: EdgeInsets.only(left: 10.w),
      ),
    ),
  );
}
