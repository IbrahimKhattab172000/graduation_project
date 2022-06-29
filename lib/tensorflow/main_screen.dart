// ignore_for_file: prefer_const_constructors, avoid_print, deprecated_member_use, unused_local_variable, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/home_screen/home_components.dart';
import 'package:graduation_project/screens/show_video/show_video_squat_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../main.dart';
import '../screens/show_video/show_video_arm_press_screen.dart';
import 'pushed_pageA.dart';
import 'pushed_pageS.dart';
import 'pushed_pageY.dart';

class MainScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
  MainScreen(this.cameras);

  static const String id = 'main_screen';
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 70.w),
      child: Expanded(
        child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            mainAxisSpacing: 20,
            padding: EdgeInsetsDirectional.only(
              start: 30,
              top: 30,
            ),
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/young-fitness-man-studio.jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "ABS",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ShowVideoArmPressScreen(
                                    videoId: YoutubePlayer.convertUrlToId(
                                      "https://www.youtube.com/watch?v=QnT2ICprh_4",
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/young-woman-exercising-with-dumbbells-gym.jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Biceps",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/muscular-man-doing-push-ups-one-hand.jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Push Up",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ShowVideoSquatScreen(
                                    videoId: YoutubePlayer.convertUrlToId(
                                      "https://www.youtube.com/watch?v=eUC7DXLhRII",
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/full-shot-woman-doing-squats(1).jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Squats",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/athletic-young-male-yogi-practicing-yoga-indoors-standing-barefooted-mat-holding-hands-namaste-doing-sun-salutation-sequence-morning.jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Legs",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 250,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height: 113,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/sporty-young-woman-doing-plank-exercise-indoors-home.jpg',
                                alignment: Alignment.topLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Plank",
                            style: TextStyle(
                                color: MyColors.kMainLightColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
      // GridView.extent(
      //   padding: EdgeInsets.all(7.h),
      //   scrollDirection: Axis.vertical,
      //   physics: BouncingScrollPhysics(),
      //   primary: false,
      //   crossAxisSpacing: 45.h,
      //   mainAxisSpacing: 45.h,
      //   maxCrossAxisExtent: 180.0.h,
      //   children: [
      //     Column(
      //       children: [
      //         mainComponent(
      //           imgSrc: "assets/images/young-fitness-man-studio.jpg",
      //         ),
      //         SizedBox(height: 5,),
      //         Text("ABS",)
      //       ],
      //     ),
      //     //*1
      //     // Stack(
      //     //   children: <Widget>[
      //     //     Column(
      //     //       children: [
      //     //         Container(
      //     //           width: 200.w,
      //     //           height: 145.h,
      //     //           padding: EdgeInsets.symmetric(horizontal: 8.0.h),
      //     //           child: RaisedButton(
      //     //             shape: RoundedRectangleBorder(
      //     //                 borderRadius: BorderRadius.circular(18.0.r)),
      //     //             color: Colors.white,
      //     //             child: Image.asset(
      //     //               'assets/images/young-fitness-man-studio.jpg',
      //     //               fit: BoxFit.cover,
      //     //               width: 200.w,
      //     //               height: 145.h,                        ),
      //     //             onPressed: () {
      //     //               print('hello');
      //     //             },
      //     //           ),
      //     //         ),
      //     //         Padding(
      //     //           padding: EdgeInsets.all(2.0.h),
      //     //           child: Text(
      //     //             'ABS',
      //     //             style: TextStyle(
      //     //                 fontWeight: FontWeight.bold, fontSize: 15.sp),
      //     //           ),
      //     //         ),
      //     //       ],
      //     //     ),
      //     //   ],
      //     // ),
      //
      //     //*2
      //     Stack(
      //       children: <Widget>[
      //         Column(
      //           children: [
      //             Container(
      //               width: 200.w,
      //               height: 145.h,
      //               padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      //               child: RaisedButton(
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(18.0.r)),
      //                 color: Colors.white,
      //                 child: Container(
      //                     padding: EdgeInsets.all(2.0.h),
      //                     child: Image.asset(
      //                         'assets/images/tensorflow_images/arm_press.PNG')),
      //                 onPressed: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (context) => ShowVideoArmPressScreen(
      //                         videoId: YoutubePlayer.convertUrlToId(
      //                           "https://youtu.be/qbFbCPc8dAc",
      //                         ),
      //                       ),
      //                     ),
      //                   );
      //                 }
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(2.0.h),
      //               child: Text(
      //                 'Biceps',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 15.sp),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //
      //     //*3
      //     Stack(
      //       children: <Widget>[
      //         Column(
      //           children: [
      //             Container(
      //               width: 200.w,
      //               height: 145.h,
      //               padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      //               child: RaisedButton(
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(18.0.r)),
      //                 color: Colors.white,
      //                 child: Container(
      //                     padding: EdgeInsets.all(10.0.h),
      //                     child: Image.asset(
      //                         'assets/images/tensorflow_images/push_up.PNG')),
      //                 onPressed: () {
      //                   print('hello');
      //                 },
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(2.0.h),
      //               child: Text(
      //                 'Push Up',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 15.sp),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //
      //     //*4
      //     Stack(
      //       children: <Widget>[
      //         Column(
      //           children: [
      //             Container(
      //               width: 200.w,
      //               height: 145.h,
      //               padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      //               child: RaisedButton(
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(15.0.r)),
      //                 color: Colors.white,
      //                 child: Container(
      //                     padding: EdgeInsets.all(2.0.h),
      //                     child: Image.asset(
      //                         'assets/images/tensorflow_images/squat.PNG')),
      //                 onPressed: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (context) => ShowVideoSquatScreen(
      //                         videoId: YoutubePlayer.convertUrlToId(
      //                           "https://youtu.be/qbFbCPc8dAc",
      //                         ),
      //                       ),
      //                     ),
      //                   );
      //                 },
      //                     // onSelectS(context: context, modelName: 'posenet'),
      //
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(2.0.h),
      //               child: Text(
      //                 'SQATS',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 15.sp),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //
      //     //*5
      //     Stack(
      //       children: <Widget>[
      //         Column(
      //           children: [
      //             Container(
      //               width: 200.w,
      //               height: 145.h,
      //               padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      //               child: RaisedButton(
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(18.0.r)),
      //                 color: Colors.white,
      //                 child: Container(
      //                     padding: EdgeInsets.all(10.0.h),
      //                     child: Image.asset(
      //                         'assets/images/tensorflow_images/plank.PNG')),
      //                 onPressed: () {
      //                   print('hello');
      //                 },
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(2.0.h),
      //               child: Text(
      //                 'Plank',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 15.sp),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //
      //     //*6
      //     Stack(
      //       children: <Widget>[
      //         Column(
      //           children: [
      //             Container(
      //               width: 200.w,
      //               height: 145.h,
      //               padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      //               child: RaisedButton(
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(18.0.r)),
      //                 color: Colors.white,
      //                 child: Container(
      //                     padding: EdgeInsets.all(10.0.h),
      //                     child: Image.asset(
      //                         'assets/images/tensorflow_images/lunge_squat.PNG')),
      //                 onPressed: () {
      //                   print('hello');
      //                 },
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(2.0.h),
      //               child: Text(
      //                 'Legs',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 15.sp),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

// void onSelectA(
//     {required BuildContext context, required String modelName}) async {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PushedPageA(
//         cameras: cameras!,
//         title: modelName,
//       ),
//     ),
//   );
// }
//
// void onSelectS(
//     {required BuildContext context, required String modelName}) async {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PushedPageS(
//         cameras: cameras!,
//         title: modelName,
//       ),
//     ),
//   );
// }
//
// void onSelectY(
//     {required BuildContext context, required String modelName}) async {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PushedPageY(
//         cameras: cameras!,
//         title: modelName,
//       ),
//     ),
//   );
// }
