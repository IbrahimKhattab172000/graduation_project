// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/initial_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/new_password/new_password_screen.dart';
import 'package:graduation_project/screens/otp/otp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///* Using ScreenUtilInit to handle all sorts of responsivity

    return ScreenUtilInit(
      designSize: Size(375, 838),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthy life',
        theme: ThemeData(
          primaryColor: MyColors.kLightPrimaryColor,
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: NewPasswordScreen(),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Healthy life',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: kPrimaryColor,
//       ),
//       home:
//     );
//   }
// }
