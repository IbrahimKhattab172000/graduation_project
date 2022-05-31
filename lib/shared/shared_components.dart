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
    // BuildContext context,
    {
  IconData? leadingIcon,
  Color? leadingIconColor,
  double? leadingIconSize,
  Color? appBarColor,
  String? title,
  bool showLeading = true,
  bool showActions = false,
  VoidCallback? onPressAction,
  Widget? actionsWidget,
  VoidCallback? onPressLeading,
}) {
  return AppBar(
    ///*Because we will have an exception for the login screen
    leading: showLeading
        ? IconButton(
            onPressed: onPressLeading,
            icon: Icon(
              leadingIcon ?? Icons.arrow_back_ios,
              size: leadingIconSize ?? 25.w,
              color: leadingIconColor ?? Colors.white,
            ),
          )
        : Container(),

    backgroundColor: appBarColor ?? MyColors.kMainLightColor,
    title: Text(
      title ?? "Healthy Life",
      style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    elevation: 0,
    actions: [
      showActions
          ? IconButton(
              onPressed: onPressAction,
              icon: actionsWidget!,
            )
          : Container(),
    ],
  );
}

Widget roundedWidget({
  required Widget child,
  double? width,
  double? height,
  Color? color,
  double? radius,
  bool useBottomRadius = false,
  EdgeInsets? containerPadding,
}) {
  return Container(
    padding: containerPadding ?? EdgeInsets.all(20.h),
    width: width ?? double.infinity,
    height: height ?? 650.h,
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius ?? 30.r),
        topRight: Radius.circular(radius ?? 30.r),
        bottomLeft: useBottomRadius
            ? Radius.circular(radius ?? 30.r)
            : Radius.circular(0),
        bottomRight: useBottomRadius
            ? Radius.circular(radius ?? 30.r)
            : Radius.circular(0),
      ),
    ),
    child: child,
  );
}

Widget mainContainerWidelySpread({
  required Widget child,
}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: MyColors.kMainLightColor,
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
  double? width,
  // Color? background,
  bool isUpperCase = false,
  double? radius,
  double? height,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width ?? 330.w,
      height: height ?? 54.h,
      child: MaterialButton(
        elevation: 30,
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 33.r),
        color: MyColors.kMainLightColor,
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
  TextEditingController? controller,
  ValueChanged? onFieldSubmitted,
  FormFieldValidator? validator,

  //  IconData? icon,
}) {
  return Material(
    borderRadius: BorderRadius.circular(15),
    elevation: 10,
    shadowColor: MyColors.kLightGray,
    child: TextFormField(
      obscureText: isPassword,
      controller: controller,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
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

Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged? onSubmit,
  ValueChanged? onChange,
  required FormFieldValidator validator,
  String? lable,
  IconData? prefix,
  IconData? suffix,
  OutlineInputBorder? border,
  bool isPassword = false,
  VoidCallback? suffixPressed,
  GestureTapCallback? onTap,
  bool isClickable = true,
  TextStyle? textStyle,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validator,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      obscureText: isPassword,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: lable,
        border: border,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
            : null,
      ),
      textAlign: TextAlign.start,
      cursorColor: MyColors.kSpecialLightGreyColor,
      style: textStyle,
    );
