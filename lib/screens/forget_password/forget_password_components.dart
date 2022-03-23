// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/login/login_screen.dart';

import '../../constants.dart';

Widget backToLogin(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(15.0.h),
    child: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        child: Text(
          "Back to login",
          style: TextStyle(color: MyColors.kLightGray),
        ),
      ),
    ),
  );
}

Widget forgetPasswordMainPic() {
  return Padding(
    padding: EdgeInsets.all(15.0.h),
    child: Container(
      // height: 208.h,
      // width: 313.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Colors.black,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Image.asset("assets/images/forgetpassword.jpg"),
      ),
    ),
  );
}
