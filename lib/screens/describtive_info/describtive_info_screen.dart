// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/fitness_level/fitness_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'describtive_info_components.dart';

class DescribtiveInfo extends StatefulWidget {
  DescribtiveInfo({Key? key}) : super(key: key);

  @override
  State<DescribtiveInfo> createState() => _DescribtiveInfoState();
}

class _DescribtiveInfoState extends State<DescribtiveInfo> {
  bool isWoman = false;
  bool isMan = false;

  var ageController = TextEditingController();
  var weightController = TextEditingController();
  var heightController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  double _currentSliderValue = 4;

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
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: roundedWidget(
                  height: 720.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              //* For woman
                              manOrWoman(
                                onTap: () {
                                  setState(() {
                                    isWoman = !isWoman;
                                    isMan = false;
                                  });
                                },
                                height: isWoman ? 155.h : 135.h,
                                width: isWoman ? 130.w : 110.w,
                                image: "assets/images/woman.jpg",
                                radius: 60.r,
                                color: isWoman
                                    ? MyColors.kExtraLightMainColor
                                    : MyColors.kSpecialBetweenWhiteAndGrey,
                              ),
                              SizedBox(
                                height: 20.r,
                              ),
                              manOrWomanText(text: "Woman"),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Column(
                            children: [
                              //* For man
                              manOrWoman(
                                onTap: () {
                                  setState(() {
                                    isMan = !isMan;
                                    isWoman = false;
                                  });
                                },
                                height: isMan ? 155.h : 135.h,
                                width: isMan ? 130.w : 110.w,
                                image: "assets/images/man.jpg",
                                radius: 60.r,
                                color: isMan
                                    ? MyColors.kExtraLightMainColor
                                    : MyColors.kSpecialBetweenWhiteAndGrey,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              manOrWomanText(text: "Man"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            inputRow(
                              text: "Age",
                              controller: ageController,
                              type: TextInputType.number,
                              validator: (value) {
                                // !There is an issue with the validation here!
                                // if (formKey.currentState!.validate()) {
                                //   return "Enter an age";
                                // }
                              },
                              label: "Age",
                              textStyle: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            inputRow(
                              text: "Weight",
                              controller: weightController,
                              type: TextInputType.number,
                              validator: (value) {
                                //!There is an issue with the validation here!
                                // if (formKey.currentState!.validate()) {
                                //   return "Enter an Weight";
                                // }
                              },
                              label: "Weight",
                              textStyle: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            inputRow(
                              text: "Height",
                              controller: heightController,
                              type: TextInputType.number,
                              validator: (value) {
                                //!There is an issue with the validation here!
                                // if (formKey.currentState!.validate()) {
                                //   return "Enter an Height";
                                // }
                              },
                              label: "Height",
                              textStyle: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          showYourFitness(),
                          myCustomSlider(context),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: defaultButton(
                          function: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => FitnessScreen(),
                                ),
                              );
                            }
                          },
                          text: "Save",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///I Couldn't move it to lib\screens\inputs_one\inputs_one_components.dart ...
  ///... cuz setState(() {_currentSliderValue = value;}); and these values.
  Widget myCustomSlider(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 3.0.h,
        valueIndicatorColor: MyColors.kExtraLightMainColor,
      ),
      child: Slider(
        min: 0.w,
        max: 10.w,
        value: _currentSliderValue,
        divisions: 10,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
        label: _currentSliderValue.round().toString(),
        activeColor: MyColors.kMainLightColor,
        inactiveColor: Colors.grey[100],
        thumbColor: Colors.white,
      ),
    );
  }
}
