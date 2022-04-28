// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'onboarding_content.dart';
import '../login/login_screen.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  var boardController = PageController();
  bool isLast = false;

  int currentPage = 0;
  List<Map<String, String>> onboardingDataModel = [
    {
      "image": "assets/images/onboarding1.png",
      "text": "Life Style",
      "description":
          "The Future of healthy life is here,\ntrack your fitness, fat,and hydration\nlevel by using our subtle approach",
    },
    {
      "image": "assets/images/onboarding2.png",
      "text": "Change",
      "description":
          "After spending few minutes using this\napp daily, yourbody will be changed, your\nenergy and your lifestyle",
    },
    {
      "image": "assets/images/onboarding3.png",
      "text": "Goals",
      "description":
          "Easy exercises with simple features\nhelp you meet any goal you want",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                  if (index == onboardingDataModel.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemCount: onboardingDataModel.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingDataModel[index]["image"]!,
                  text: onboardingDataModel[index]["text"]!,
                  describtion: onboardingDataModel[index]["description"]!,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingDataModel.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    defaultButton(
                      function: () {
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
                      text: isLast ? "Get started" : "Next",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 400,
      ),
      margin: EdgeInsets.only(right: 5.w),

      ///* I'm using "w" with height and width here yo get the same thing to make a rounded shape
      height: currentPage == index ? 10.w : 5.w,
      width: currentPage == index ? 10.w : 5.w,
      decoration: BoxDecoration(
        color: currentPage == index
            ? MyColors.kMainLightColor
            : MyColors.kSpecialBetweenWhiteAndGrey,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}

 


//////*Old code

// class BoardingModel {
//   final String image;
//   final String title;
//   final String body;

//   BoardingModel({
//     required this.title,
//     required this.image,
//     required this.body,
//   });
// }

// class OnBoardingScreen extends StatefulWidget {
//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   var boardController = PageController();

//   List<BoardingModel> boarding = [
//     BoardingModel(
//       image: 'assets/images/onboarding1.png',
//       title: 'Life Style',
//       body:
//           'The Future of healthy life is here ,track your fitness, fat, and hydration'
//           'level by using our subtle approach',
//     ),
//     BoardingModel(
//       image: 'assets/images/onboarding2.png',
//       title: 'Change',
//       body:
//           'few minutes using this app .your  body will be change your energy and  your life style.',
//     ),
//     BoardingModel(
//       image: 'assets/images/onboarding3.png',
//       title: 'Goals',
//       body:
//           'Easy exercises with more simple features  help you meet any goal you want. ',
//     ),
//   ];

//   bool isLast = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,

//         ///* center title
//         centerTitle: true,
//         title: Text(
//           'Healthy',
//           style: TextStyle(
//             color: MyColors.kLightPrimaryColor,
//             fontSize: 38,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               navigateAndFinish(
//                 context,
//                 LoginScreen(),
//               );
//             },
//             child: Text(
//               'SKIP',
//               style: TextStyle(
//                 color: MyColors.kLightPrimaryColor,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Expanded(
//               child: PageView.builder(
//                 physics: BouncingScrollPhysics(),
//                 controller: boardController,
//                 onPageChanged: (int index) {
//                   if (index == boarding.length - 1) {
//                     setState(() {
//                       isLast = true;
//                     });
//                   } else {
//                     setState(() {
//                       isLast = false;
//                     });
//                   }
//                 },
//                 itemBuilder: (context, index) =>
//                     buildBoardingItem(boarding[index]),
//                 itemCount: boarding.length,
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             SmoothPageIndicator(
//               controller: boardController,
//               effect: ExpandingDotsEffect(
//                 dotColor: MyColors.kSpecialBetweenWhiteAndGrey,
//                 activeDotColor: MyColors.kLightPrimaryColor,
//                 dotHeight: 8.h,
//                 expansionFactor: 5.h,
//                 dotWidth: 5.w,
//                 spacing: 5.0,
//                 radius: 20.r,
//               ),
//               count: boarding.length,
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Spacer(),
//             Center(
//               child: defaultButton(
//                 background: MyColors.kLightPrimaryColor,
//                 function: () {
//                   if (isLast) {
//                     navigateAndFinish(
//                       context,
//                       LoginScreen(),
//                     );
//                   } else {
//                     boardController.nextPage(
//                       duration: Duration(
//                         milliseconds: 750,
//                       ),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                     );
//                   }
//                 },
//                 text: "Next",
//                 width: 258.w,
//                 height: 43.h,
//                 radius: 30.r,
//               ),
//             ),
//             SizedBox(
//               height: 7,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildBoardingItem(BoardingModel model) => Column(
//         children: [
//           Container(
//             // width: 275.w,
//             // height: 279.h,
//             decoration: BoxDecoration(color: MyColors.kLightPrimaryColor),
//             child: Image(
//               image: AssetImage(model.image),
//             ),
//           ),
//           SizedBox(
//             height: 2.0,
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               model.title,
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Text(model.body,
//                 style: TextStyle(
//                   fontSize: 13.0,
//                   letterSpacing: 2,
//                   wordSpacing: 4,
//                 )),
//           ),
//         ],
//       );
// }



// Widget myDivider() => Padding(
//       padding: const EdgeInsetsDirectional.only(
//         start: 20.0,
//       ),
//       child: Container(
//         width: double.infinity,
//         height: 1.0,
//         color: Colors.grey[300],
//       ),
//     );

// void navigateTo(context, widget) => Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => widget,
//       ),
//     );

// void navigateAndFinish(
//   context,
//   widget,
// ) =>
//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(
//         builder: (context) => widget,
//       ),
//       (route) {
//         return false;
//       },
//     );
