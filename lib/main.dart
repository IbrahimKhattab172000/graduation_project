import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/initial_screen.dart';

import 'tensorflow/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';

List<CameraDescription>? cameras;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      builder: (BuildContext context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthy life',
        theme: ThemeData(
          fontFamily: "Dosis",
        ),
        builder: (context, widget) {
          ScreenUtil.init(context);
          return MediaQuery(
            //*Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: InitialScreen(),
        routes: {
          MainScreen.id: (context) => MainScreen(cameras!),
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
