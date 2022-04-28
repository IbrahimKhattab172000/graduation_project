// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/extra_inputs/health_condition/health_condition_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'fitness_components.dart';

class FitnessScreen extends StatefulWidget {
  FitnessScreen({Key? key}) : super(key: key);

  @override
  State<FitnessScreen> createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen> {
  bool firstIsTapped = true;
  bool secIsTapped = false;
  bool thirdIsTapped = false;

  bool isFirstTrueNow = false;
  bool isSecTrueNow = false;
  bool isThirdTrueNow = false;

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
                    chooseYourFitnessLevelText(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        determineYourfitnessLevelWidget(
                          onTap: () {
                            if (isFirstTrueNow) {
                              setState(() {
                                firstIsTapped = true;
                                secIsTapped = false;
                                thirdIsTapped = false;
                              });
                            } else {
                              setState(() {
                                firstIsTapped = !firstIsTapped;
                                secIsTapped = false;
                                thirdIsTapped = false;
                              });
                            }
                          },
                          color: firstIsTapped
                              ? MyColors.kMainLightColor
                              : MyColors.kSpecialLightGreyColor,
                        ),
                        determineYourfitnessLevelWidget(
                          height: 140.h,
                          width: 70.w,
                          onTap: () {
                            if (isSecTrueNow) {
                              setState(() {
                                secIsTapped = true;
                                firstIsTapped = true;
                                thirdIsTapped = false;
                              });
                            } else {
                              setState(() {
                                secIsTapped = !secIsTapped;
                                firstIsTapped = true;
                                thirdIsTapped = false;
                              });
                            }
                          },
                          color: secIsTapped
                              ? MyColors.kMainLightColor
                              : MyColors.kSpecialLightGreyColor,
                        ),
                        determineYourfitnessLevelWidget(
                          height: 210.h,
                          width: 70.w,
                          onTap: () {
                            setState(() {
                              thirdIsTapped = !thirdIsTapped;
                              firstIsTapped = true;
                              secIsTapped = true;
                              isFirstTrueNow = true;
                              isSecTrueNow = true;
                            });
                          },
                          color: thirdIsTapped
                              ? MyColors.kMainLightColor
                              : MyColors.kSpecialLightGreyColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (firstIsTapped &&
                            secIsTapped == false &&
                            thirdIsTapped == false)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 35.h),
                                child: trueWidget(),
                              ),
                            ],
                          ),
                        if (secIsTapped && thirdIsTapped == false)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 165.h),
                                child: trueWidget(),
                              ),
                            ],
                          ),
                        if (thirdIsTapped)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 300.h),
                                child: trueWidget(),
                              ),
                            ],
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    if (!secIsTapped && !thirdIsTapped && firstIsTapped)
                      Column(
                        children: [
                          loseWeightText(text: "Lose Weight"),
                          SizedBox(
                            height: 20.h,
                          ),
                          longText(
                            context: context,
                            text:
                                "Muscle Building exercises help lose fat\n                  and improve body",
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                        ],
                      ),
                    if (secIsTapped && !thirdIsTapped)
                      Column(
                        children: [
                          loseWeightText(text: "Miantain your fitness"),
                          SizedBox(
                            height: 20.h,
                          ),
                          longText(
                            context: context,
                            text:
                                "Maintaining physical and muscular fitness\n     and maintaining a healthy weight",
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                        ],
                      ),
                    if (thirdIsTapped)
                      Column(
                        children: [
                          loseWeightText(text: "Increase muscle strength"),
                          SizedBox(
                            height: 20.h,
                          ),
                          longText(
                            context: context,
                            text:
                                "Muscular strength exercises help you lift\n    higher weights and thus increase your\n         muscular and physical strength ",
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                        ],
                      ),
                    defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HealthConditionScreen(),
                          ),
                        );
                      },
                      text: "Next",
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
