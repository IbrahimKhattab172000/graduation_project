// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';

Widget partnerWidget() {
  return Card(
    elevation: 5,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.w),
      child: Container(
        width: 330.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Partner",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20.sp, color: MyColors.kSpecialMainColor),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.apartment_rounded,
                    size: 30.w,
                    color: MyColors.kSpecialMainColor,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Our place help you to practice your exercises in a comfortable\nenvironment that helps improve your physical state",
                style: TextStyle(fontSize: 13.sp, color: MyColors.kLightGray),
                maxLines: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: InkWell(
                    onTap: () {},
                    focusColor: MyColors.kMainLightColor,
                    hoverColor: MyColors.kMainLightColor,
                    child: Container(
                      height: 50.w,
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Show on map",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: MyColors.kMaindarkColor),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
