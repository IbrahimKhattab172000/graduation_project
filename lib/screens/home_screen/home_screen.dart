// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/shared/shared_components.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Map<dynamic, dynamic>> dummyImages = [
    {
      "image": "assets/images/dummy4.jpg",
    },
    {
      "image": "assets/images/dummy4.jpg",
    },
    {
      "image": "assets/images/dummy4.jpg",
    },
    {
      "image": "assets/images/dummy4.jpg",
    },
    {
      "image": "assets/images/dummy4.jpg",
    },
    {
      "image": "assets/images/dummy4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context,
        showActions: true,
        actionsWidget: Icon(Icons.menu),
        onPressAction: () {},
        showArrowBack: false,
      ),
      body: Container(
        color: MyColors.kPrimaryColor,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              storiesSection(),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Recommended for you"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/Backandbiceps.jpg",
                      text: "Back and biceps",
                    ),
                    mainComponent(
                      imgSrc: "assets/images/cardioexercises.jpg",
                      text: "cardio exercises",
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Advices"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/selfcare.jpg",
                      text: "self care",
                    ),
                    mainComponent(
                      imgSrc: "assets/images/nutrition.jpg",
                      text: "nutrition",
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Meals"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/Breakfast.jpg",
                      text: "Breakfast",
                      height: 124.h,
                      width: 95.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    mainComponent(
                      imgSrc: "assets/images/Lunch.jpg",
                      text: "Lunch",
                      height: 124.h,
                      width: 95.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    mainComponent(
                      imgSrc: "assets/images/Dinner.jpg",
                      text: "Dinner",
                      height: 124.h,
                      width: 95.w,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainComponent({
    required String imgSrc,
    required String text,
    double? height,
    double? width,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 2.w),
      child: SizedBox(
        height: height ?? 155.h,
        width: width ?? 205.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.r),
          child: Stack(
            //*So important to expand the image
            fit: StackFit.expand,
            children: [
              Image.asset(
                imgSrc,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 10.h,
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      // TextSpan(
                      //   text: "\n",
                      //   style: TextStyle(
                      //     fontSize: 15.sp,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),

                      TextSpan(
                        text: text,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
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

  Widget rowBeforeTheCategories({
    required String text,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15.w,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget storiesSection() {
    return Container(
      width: double.infinity,
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyImages.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return SizedBox(
              width: 10.w,
            );
          }
          return Container(
            margin: EdgeInsets.all(10.w),
            width: 75.h,
            height: 75.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 2),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: ClipOval(
                child: Image(
                  height: 70.h,
                  width: 70.h,
                  image: AssetImage(
                    dummyImages[index - 1]["image"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
