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




// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_project/constants.dart';
// import 'package:graduation_project/screens/home_screen/home_screen.dart';
// import 'package:graduation_project/screens/layout_screen/layout_screen.dart';
// import 'package:graduation_project/screens/profile/profile_screen.dart';

// import 'naviagtion_drawer_components.dart';

// class NavigationDrawerScreen extends StatelessWidget {
//   const NavigationDrawerScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Color(0xFF1F506E),
//       child: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             buildHeader(context),
//             Divider(color: MyColors.kLightGray),
//             buildMenuItems(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildHeader(BuildContext context) => Container(
//         padding: EdgeInsets.only(
//           top: 30.h,
//           left: 25.h,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CircleAvatar(
//                   radius: 45.r,
//                   backgroundImage: AssetImage("assets/images/tea.jpg"),
//                 ),
//               ),
//             ),
//             SizedBox(height: 8.h),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 10.h,
//               ),
//               child: Text(
//                 "Nabil!",
//                 style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(height: 5.h),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 10.h,
//               ),
//               child: Text(
//                 "Hello there, everyone! Nabil is my name.\nI adore drinking tea with milk, and I do so on a daily basis",
//                 style: TextStyle(
//                   fontSize: 12.sp,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//   Widget buildMenuItems(BuildContext context) => Container(
//         padding: EdgeInsets.all(20.w),
//         child: Wrap(
//           runSpacing: 16.h,
//           children: [
//             Column(
//               children: [
//                 //Profile
//                 drawerTile(
//                     context: context,
//                     iconData: Icons.person_outline,
//                     text: "Profile",
//                     onTap: () {
//                       Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               LayoutScreen(indexFromDrawer: 4),
//                         ),
//                       );
//                     }),
//                 //Settings
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.settings_outlined,
//                   text: "Settings",
//                   onTap: () {},
//                 ),
//                 //Favorites
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.favorite_outline,
//                   text: "Favorites",
//                   onTap: () {},
//                 ),
//                 //Your Opinion
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.chat_outlined,
//                   text: "Your Opinion",
//                   onTap: () {},
//                 ),
//                 //My Achievements
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.wallet_giftcard,
//                   text: "My Achievements",
//                   onTap: () {},
//                 ),
//                 //Invite a Friend
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.call_made_outlined,
//                   text: "Invite a Friend",
//                   onTap: () {},
//                 ),
//                 Divider(height: 2.h, color: MyColors.kLightGray),
//                 //Terms & Policies
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.rule_rounded,
//                   text: "Terms & Policies",
//                   onTap: () {},
//                 ),
//                 //Help Center
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.help_outline,
//                   text: "Help Center",
//                   onTap: () {},
//                 ),
//                 //Privacy
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.privacy_tip_outlined,
//                   text: "Privacy",
//                   onTap: () {},
//                 ),
//                 //Report a Problem
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.report_outlined,
//                   text: "Report a Problem",
//                   onTap: () {},
//                 ),
//                 Divider(height: 2.h, color: MyColors.kLightGray),
//                 //Log Out
//                 drawerTile(
//                   context: context,
//                   iconData: Icons.logout_outlined,
//                   text: "Log Out",
//                   color: Colors.red,
//                   onTap: () {},
//                 ),
//                 SizedBox(height: 50.h),
//               ],
//             ),
//           ],
//         ),
//       );
// }
