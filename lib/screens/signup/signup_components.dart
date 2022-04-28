// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Stack addProfilePicStack() {
  return Stack(
    alignment: AlignmentDirectional.bottomEnd,
    children: [
      CircleAvatar(
        radius: 55.r,
        backgroundColor: MyColors.kSpecialLightGreyColor,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.photo_camera,
            color: MyColors.kExtraLightMainColor,
          ),
        ),
      ),
      CircleAvatar(
        backgroundColor: MyColors.kExtraLightMainColor,
        radius: 15.r,
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
      color: MyColors.kMaindarkColor,
      fontSize: 25.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}
