// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'inputs_one_components.dart';

class InputsScreen extends StatefulWidget {
  InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  double _currentSliderValue = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Container(
                  padding: EdgeInsets.all(20.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(25.r),
                    ),
                  ),
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
                                height: 155.h,
                                width: 103.w,
                                image: "assets/images/woman.jpg",
                                radius: 25.r,
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
                                height: 155.h,
                                width: 103.w,
                                image: "assets/images/man.jpg",
                                radius: 25.r,
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
                      inputRow(
                        text: "Age",
                        value: "21",
                      ),
                      inputRow(
                        text: "Weight",
                        value: "60kg",
                      ),
                      inputRow(
                        text: "Height",
                        value: "162cm",
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
                          background: MyColors.kLightPrimaryColor,
                          function: () {},
                          text: "Save",
                          width: 232.w,
                          height: 54.h,
                          radius: 33.r,
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
        activeColor: MyColors.kLightPrimaryColor,
        inactiveColor: Colors.grey[100],
        thumbColor: Colors.white,
      ),
    );
  }
}
