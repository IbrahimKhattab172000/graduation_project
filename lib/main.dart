// ignore_for_file: prefer_const_constructors, avoid_print, prefer_void_to_null

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/initial_screen.dart';

import 'tensorflow/main_screen.dart';

// import 'screens/home_screen/home_screen.dart';

List<CameraDescription>? cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///* Using ScreenUtilInit to handle all sorts of responsivety

    return ScreenUtilInit(
      designSize: Size(375, 838),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthy life',
        theme: ThemeData(
          fontFamily: "Dosis",
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //*Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: InitialScreen(),
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSwatch(
        //     primarySwatch: Colors.blue,
        //   ),
        // ),

        routes: {
          MainScreen.id: (context) => MainScreen(cameras!),
          //DemoScreen.id: (context) => DemoScreen(),
        },
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
