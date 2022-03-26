// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'fitness_components.dart';

//Todo: Don't forget to create toggling here it's so fucking crucial yasta

class FitnessScreen extends StatelessWidget {
  const FitnessScreen({Key? key}) : super(key: key);

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
                    chooseYourFitnessLevelText(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        determineYourfitnessLevelWidget(),
                        determineYourfitnessLevelWidget(
                          height: 140.h,
                          width: 70.w,
                          color: MyColors.kSpecialLightPrimary,
                        ),
                        determineYourfitnessLevelWidget(
                          height: 210.h,
                          width: 70.w,
                          color: MyColors.kSpecialLightPrimary,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //* Putting trueWidget(), with 2 other SizedBox inside a Row and using the same ...
                    //*.. mainAxisAlignment to get the same alignment as the previous Row
                    //! You will only get the desired shape by maintaining the SizedBoxs' width
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        trueWidget(),
                        SizedBox(
                          //*The same width as the previous elements inside the previous Row
                          //! But I don't need the height
                          // height: 140.h,
                          width: 70.w,
                        ),
                        //*Same here
                        SizedBox(
                          // height: 210.h,
                          width: 70.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    loseWeightText(),
                    SizedBox(
                      height: 20.h,
                    ),

                    longText(),
                    SizedBox(
                      height: 30.h,
                    ),

                    defaultButton(
                      function: () {},
                      text: "Next",
                      height: 54.h,
                      width: 232.w,
                      radius: 33.r,
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
