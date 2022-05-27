// ignore_for_file: prefer_const_constructors, avoid_print, deprecated_member_use, unused_local_variable, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../main.dart';
import 'pushed_pageA.dart';
import 'pushed_pageS.dart';
import 'pushed_pageY.dart';

class MainScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
  MainScreen(this.cameras);

  static const String id = 'main_screen';
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 70.w),
      child: GridView.extent(
        padding: EdgeInsets.all(7.h),
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        primary: false,
        crossAxisSpacing: 45.h,
        mainAxisSpacing: 45.h,
        maxCrossAxisExtent: 180.0.h,
        children: [
          //*1
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0.r)),
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(4.0.h),
                        child: Image.asset(
                          'assets/images/tensorflow_images/crunch.PNG',
                        ),
                      ),
                      onPressed: () {
                        print('hello');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'ABS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //*2
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0.r)),
                      color: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(2.0.h),
                          child: Image.asset(
                              'assets/images/tensorflow_images/arm_press.PNG')),
                      onPressed: () =>
                          onSelectA(context: context, modelName: 'posenet'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'Biceps',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //*3
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0.r)),
                      color: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(10.0.h),
                          child: Image.asset(
                              'assets/images/tensorflow_images/push_up.PNG')),
                      onPressed: () {
                        print('hello');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'Push Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //*4
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0.r)),
                      color: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(2.0.h),
                          child: Image.asset(
                              'assets/images/tensorflow_images/squat.PNG')),
                      onPressed: () =>
                          onSelectS(context: context, modelName: 'posenet'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'SQATS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //*5
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0.r)),
                      color: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(10.0.h),
                          child: Image.asset(
                              'assets/images/tensorflow_images/plank.PNG')),
                      onPressed: () {
                        print('hello');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'Plank',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //*6
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 145.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0.r)),
                      color: Colors.white,
                      child: Container(
                          padding: EdgeInsets.all(10.0.h),
                          child: Image.asset(
                              'assets/images/tensorflow_images/lunge_squat.PNG')),
                      onPressed: () {
                        print('hello');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0.h),
                    child: Text(
                      'Legs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void onSelectA(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}

void onSelectS(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageS(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}

void onSelectY(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageY(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}
