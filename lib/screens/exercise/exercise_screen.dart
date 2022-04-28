// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'exercise_components.dart';

class ExerciseScreen extends StatefulWidget {
  ExerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  //* Controller(); is a helper class down there
  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        leadingIcon: Icons.menu,
      ),
      body: mainContainerWidelySpread(
        child: Padding(
          padding:
              EdgeInsets.only(top: 1.h, bottom: 80.h, left: 10.h, right: 10.h),
          child: roundedWidget(
            containerPadding: EdgeInsets.all(5.h),
            useBottomRadius: true,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  helloUserPart(),
                  DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            //? Why I cant't use them well!
                            // labelStyle: TextStyle(
                            //   fontSize: 28.w,
                            //   color: MyColors.kMainLightColor,
                            // ),
                            // unselectedLabelStyle: TextStyle(
                            //   fontSize: 18.w,
                            //   color: MyColors.kLightGray,
                            // ),
                            padding: EdgeInsets.only(left: 8.w, top: 12.h),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorWeight: 3,
                            indicatorColor: MyColors.kMainLightColor,
                            labelColor: MyColors.kMainLightColor,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                child: exerciseTabBarItem(
                                  widget: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.assessment_outlined,
                                        size: 20.w,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "States",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: exerciseTabBarItem(
                                  widget: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.accessibility_new_rounded,
                                        size: 20.w,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Muscles",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 400.h, //height of TabBarView
                          decoration: BoxDecoration(),
                          child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              //*First item
                              firstExerciseTabBarWidget(),
                              //*Second item
                              secExerciseTabBarWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//*first TabBar Widget
  Widget firstExerciseTabBarWidget() {
    return Container(
      padding: EdgeInsets.all(15.h),
      margin: EdgeInsets.only(top: 10.h),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60.w,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: MyColors.kSpecialLightGreyColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: MyColors.kExtraLightMainColor,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '22',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.kMainLightColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.h),
                  child: descriptionalText(
                    text: 'Workouts completed',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    widelyUsedText(text: '72.7 kg'),
                    SizedBox(
                      height: 20.h,
                    ),
                    descriptionalText(
                      text: "Current Weight",
                    )
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                seperatedVirticalLine(),
                Column(
                  children: [
                    widelyUsedText(text: '7.4 kg'),
                    progressLine(),
                    descriptionalText(
                      text: "Left to Gain",
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    borderRoundedContainer(
                      widget: Image.asset("assets/images/fire.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: widelyUsedText(
                        text: "11.9 kal",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    descriptionalText(text: "Burned"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    borderRoundedContainer(
                      widget: Image.asset("assets/images/bar.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: widelyUsedText(
                        text: "250 kg",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    descriptionalText(text: "Lifted"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    borderRoundedContainer(
                      widget: Image.asset("assets/images/clock.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: widelyUsedText(
                        text: "13 Weeks",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    descriptionalText(text: "Traning"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.kMainLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'AUG\n 22',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        shortLine(color: Colors.grey[600]),
                        shortLine(color: Colors.black),
                        shortLine(color: Colors.grey),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: widelyUsedText(
                        text: 'Recent: Chest&Legs ',
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.kMainLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }

//*Second TabBar Widget
  Widget secExerciseTabBarWidget() {
    return Container(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(13.h),
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      controller.val1 = true;
                      controller.val2 = false;
                      setState(() {});
                    },
                    child: frontAndBackWidget(
                      color: controller.val1
                          ? MyColors.kMainLightColor
                          : Colors.white,
                      text: 'Front',
                      textColor: controller.val1
                          ? Colors.white
                          : MyColors.kMainLightColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.val2 = true;
                      controller.val1 = false;
                      setState(() {});
                    },
                    child: frontAndBackWidget(
                      color: controller.val2
                          ? MyColors.kMainLightColor
                          : Colors.white,
                      text: 'back',
                      textColor: controller.val2
                          ? Colors.white
                          : MyColors.kMainLightColor,
                    ),
                  ),
                ],
              )),
          controller.val1
              ? bodyWidget(imageSrc: 'assets/images/sketlonefront.png')
              : bodyWidget(imageSrc: 'assets/images/sketloneback.png'),
        ],
      ),
    );
  }
}

//*Helper class
class Controller {
  bool val1 = true;
  bool val2 = false;
}
