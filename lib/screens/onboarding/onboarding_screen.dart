// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_components.dart';
import '../login/login_screen.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onboarding1.png',
      title: 'Life Style',
      body:
          'The Future of healthy life is here ,track your fitness, fat, and hydration'
          'level by using our subtle approach',
    ),
    BoardingModel(
      image: 'assets/images/onboarding2.png',
      title: 'Change',
      body:
          'few minutes using this app .your  body will be change your energy and  your life style.',
    ),
    BoardingModel(
      image: 'assets/images/onboarding3.png',
      title: 'Goals',
      body:
          'Easy exercises with more simple features  help you meet any goal you want. ',
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Healthy Life',
          style: TextStyle(
            color: MyColors.kLightPrimaryColor,
            fontSize: 38,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              navigateAndFinish(
                context,
                LoginScreen(),
              );
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                color: MyColors.kLightPrimaryColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: boardController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemBuilder: (context, index) =>
                  buildBoardingItem(boarding[index]),
              itemCount: boarding.length,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SmoothPageIndicator(
            controller: boardController,
            effect: ExpandingDotsEffect(
              dotColor: MyColors.kSpecialBetweenWhiteAndGrey,
              activeDotColor: MyColors.kLightPrimaryColor,
              dotHeight: 10,
              expansionFactor: 5,
              dotWidth: 2,
              spacing: 10.0,
              radius: 5,
            ),
            count: boarding.length,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      navigateAndFinish(
                        context,
                        LoginScreen(),
                      );
                    } else {
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 275.w,
            height: 279.h,
            decoration: BoxDecoration(color: MyColors.kLightPrimaryColor),
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              model.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(model.body,
                style: TextStyle(
                  fontSize: 13.0,
                  letterSpacing: 2,
                  wordSpacing: 4,
                )),
          ),
        ],
      );
}
