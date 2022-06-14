// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/layout_screen/layout_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../extra_inputs_components.dart';

class InjuriesConditionScreen extends StatelessWidget {
  const InjuriesConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        onPressLeading: () {
          Navigator.of(context).pop();
        },
      ),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              roundedWidget(
                height: 720.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    mainTextInTheScreen(text: "Do you have any injuries?"),
                    SizedBox(
                      height: 20.h,
                    ),
                    ExtraInputMainWidget(
                      width: 282.w,
                      text: "shoulder joint osteoarthritis",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 174.w,
                          text: "Biceps tendinitis",
                        ),
                        ExtraInputMainWidget(
                          width: 110.w,
                          text: "Ankle sprain",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                      width: 228.w,
                      text: "rotator cuff tendinitis",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                      width: 312.w,
                      text: "Recurrent shoulder dislocation",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 146.w,
                          text: "Tennis Elbow",
                        ),
                        ExtraInputMainWidget(
                          width: 135.w,
                          text: "Calf muscle tear",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                      width: 192.w,
                      text: "Lower back pains",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                      width: 208.w,
                      text: "Knee osteoarthritis",
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LayoutScreen(),
                          ),
                        );
                      },
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
