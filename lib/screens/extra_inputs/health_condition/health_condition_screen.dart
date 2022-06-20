// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/extra_inputs/injuries/injuries_condition_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../extra_inputs_components.dart';

class HealthConditionScreen extends StatelessWidget {
  const HealthConditionScreen({Key? key}) : super(key: key);

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
                      height: 20.h,
                    ),
                    mainTextInTheScreen(
                        text: "Determine your health condition"),
                    SizedBox(
                      height: 20.h,
                    ),
                    ExtraInputMainWidget(
                      width: 210.w,
                      text: "Iactose intolerance",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 187.w,
                          text: "High cholesterol",
                        ),
                        ExtraInputMainWidget(
                          width: 81.w,
                          text: "PCO",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                        width: 193.w, text: "insulin resistance"),
                    SizedBox(
                      height: 5.h,
                    ),
                    ExtraInputMainWidget(
                      width: 222.w,
                      text: "autoimmune disease",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 146.w,
                          text: "favism(G6PD)",
                        ),
                        ExtraInputMainWidget(
                          width: 135.w,
                          text: "Hypothyroidism",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 160.w,
                          text: "Diabetes type 2",
                        ),
                        ExtraInputMainWidget(
                          width: 120.w,
                          text: "hypertension",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ExtraInputMainWidget(
                          width: 104.w,
                          text: "Pregnant",
                        ),
                        ExtraInputMainWidget(
                          width: 135.w,
                          text: "Gastric Sleeve",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => InjuriesConditionScreen(),
                          ),
                        );
                      },
                      text: "Skip",
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
