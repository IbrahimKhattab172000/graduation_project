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
                      height: 20.h,
                    ),
                    mainTextInTheScreen(
                        text: "Determine your health condition"),
                    SizedBox(
                      height: 20.h,
                    ),
                    extraInputMainWidget(
                      width: 210.w,
                      text: "Iactose intolerance",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        extraInputMainWidget(
                          width: 187.w,
                          text: "High cholesterol",
                        ),
                        extraInputMainWidget(
                          width: 81.w,
                          text: "PCO",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                        width: 193.w, text: "insulin resistance"),
                    SizedBox(
                      height: 5.h,
                    ),
                    extraInputMainWidget(
                      width: 222.w,
                      text: "autoimmune disease",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        extraInputMainWidget(
                          width: 146.w,
                          text: "favism(G6PD)",
                        ),
                        extraInputMainWidget(
                          width: 150.w,
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
                        extraInputMainWidget(
                          width: 160.w,
                          text: "Diabetes type 2",
                        ),
                        extraInputMainWidget(
                          width: 130.w,
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
                        extraInputMainWidget(
                          width: 104.w,
                          text: "Pregnant",
                        ),
                        extraInputMainWidget(
                          width: 135.w,
                          text: "Gastric Sleeve",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
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
