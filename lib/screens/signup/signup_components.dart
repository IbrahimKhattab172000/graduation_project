// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Stack addProfilePicStack() {
  return Stack(
    alignment: AlignmentDirectional.bottomEnd,
    children: [
      CircleAvatar(
        radius: 45.r,
        backgroundColor: MyColors.kSpecialBetweenWhiteAndGrey,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.photo_camera,
            color: Colors.grey[800],
          ),
        ),
      ),
      CircleAvatar(
        backgroundColor: MyColors.kLightGray,
        radius: 10.r,
        child: Icon(
          Icons.add,
          size: 10.w,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Text signupText() {
  return Text(
    "Sign up",
    style: TextStyle(
      color: Colors.black,
      fontSize: 25.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}
