// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

Widget getPremium() {
  return Container(
    width: 345.w,
    height: 65.h,
    decoration: BoxDecoration(
      color: MyColors.kSpecialLightGreyColor,
      borderRadius: BorderRadius.circular(30.r),
    ),
    child: Padding(
      padding: EdgeInsets.all(2.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0.h),
                child: Icon(
                  Icons.cloud_upload_outlined,
                  size: 35.h,
                  color: Colors.amber[800],
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              Column(
                children: [
                  Text(
                    'Unlock all trainings!',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Premium Version',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: Colors.amber[800],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Container(
                  width: 50.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Get Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.amber[800],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget userName({
  required String username,
}) {
  return Text(
    username,
    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21.sp),
  );
}

Widget profileAndCover() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.bottomCenter,
    children: [
      Image(
        height: 153.h,
        width: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/profile.jpg'),
      ),
      Positioned(
        bottom: -70.0.h,
        child: CircleAvatar(
          radius: 75.r,
          backgroundColor: Colors.white,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 70.r,
                backgroundColor: MyColors.kSpecialLightGreyColor,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                  size: 30.h,
                ),
              ),
              CircleAvatar(
                radius: 16.r,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 15.0.r,
                backgroundColor: MyColors.kSpecialLightGreyColor,
                child: Icon(
                  Icons.add,
                  size: 10.h,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget detailsWidget({
  required String value,
  required String text,
  required IconData iconData,
  required BuildContext context,
}) {
  return Padding(
    padding: EdgeInsets.all(8.0.h),
    child: Container(
      height: 70.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: MyColors.kSpecialLightGreyColor,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0.h),
            child: Icon(
              iconData,
              size: 25.h,
              color: MyColors.kExtraLightMainColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                  color: MyColors.kMaindarkColor,
                ),
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: MyColors.kExtraLightMainColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
