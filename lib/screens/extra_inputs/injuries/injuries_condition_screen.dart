// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../extra_inputs_components.dart';

class InjuriesConditionScreen extends StatelessWidget {
  const InjuriesConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              roundedContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    mainTextInTheScreen(text: "Do you have any injuries?"),
                    SizedBox(
                      height: 20.h,
                    ),
                    extraInputMainWidget(
                      width: 282.w,
                      text: "shoulder joint osteoarthritis",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        extraInputMainWidget(
                          width: 174.w,
                          text: "Biceps tendinitis",
                        ),
                        extraInputMainWidget(
                          width: 138.w,
                          text: "Ankle sprain",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                        width: 228.w, text: "rotator cuff tendinitis"),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                      width: 312.w,
                      text: "Recurrent shoulder dislocation",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        extraInputMainWidget(
                          width: 146.w,
                          text: "Tennis Elbow",
                        ),
                        extraInputMainWidget(
                          width: 160.w,
                          text: "Calf muscle tear",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                      width: 192.w,
                      text: "Lower back pains",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                      width: 208.w,
                      text: "Knee osteoarthritis",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    defaultButton(
                      function: () {},
                      text: "Finish",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
