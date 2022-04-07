// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/layout_screen/layout_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'login_components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(showLeading: false),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 75.h),
            child: roundedContainer(
              height: 588.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  loginText(),
                  SizedBox(
                    height: 8.h,
                  ),
                  textBeforeEachTextFormField(
                    text: "Email",
                  ),
                  textFormField(
                    labelText: "Email",
                    hintText: "Enter your email",
                    prefixWidget: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  textBeforeEachTextFormField(
                    text: "Password",
                  ),
                  textFormField(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    isPassword: isPassword,
                    prefixWidget: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.lock,
                        color: Colors.black38,
                      ),
                    ),
                    suffixWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: isPassword
                          ? Icon(Icons.remove_red_eye_sharp)
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  ///I used that empty container just to use beside it a my desired widget
                  ///..then use MainAxisAlignment.spaceBetween which is one of the Row(),s features
                  ///..to get the desired widget in the desired place.
                  forgetPassword(context),

                  SizedBox(
                    height: 15.h,
                  ),

                  Center(
                    child: defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LayoutScreen(),
                          ),
                        );
                      },
                      text: "Log in",
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        dontHaveAccText(),
                        SizedBox(
                          width: 10.w,
                        ),
                        signupHere(context),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smallLine(),
                        orLoginWithText(),
                        smallLine(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  otherLoginApproachs(),

                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// // ignore_for_file: prefer_const_constructors

// import 'dart:ui';

// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 100, top: 29),
//             height: double.infinity,
//             width: double.infinity,
//             color: Colors.blue[800],
//             child: Text(
//               'Healthy Life',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 40),
//             decoration: BoxDecoration(
//                 color: Color(0xFFEEEEEE),
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50))),
//             height: MediaQuery.of(context).size.height / 1.4,
//             child: Container(
//               margin: EdgeInsets.only(bottom: 25),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 40),
//                     alignment: Alignment.bottomLeft,
//                     child: Text(
//                       ' Log in',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.5,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Email',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               isCollapsed: true,
//                               prefixIcon: CircleAvatar(
//                                   backgroundColor: Colors.white,
//                                   child: Icon(
//                                     Icons.email_outlined,
//                                     color: Colors.black38,
//                                   )),
//                               filled: true,
//                               labelText: " Email",
//                               fillColor: Colors.white10,
//                               focusedBorder: OutlineInputBorder(),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(38.0),
//                                 borderSide: BorderSide(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.5,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Password',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               isCollapsed: true,
//                               suffixIcon: Icon(
//                                 Icons.remove_red_eye_sharp,
//                                 color: Colors.black87,
//                               ),
//                               prefixIcon: CircleAvatar(
//                                   backgroundColor: Colors.white,
//                                   child: Icon(
//                                     Icons.lock_outline,
//                                     color: Colors.black38,
//                                   )),
//                               filled: true,
//                               labelText: "Password",
//                               fillColor: Colors.white10,
//                               focusedBorder: OutlineInputBorder(),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(38.0),
//                                 borderSide: BorderSide(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                             margin: EdgeInsets.only(left: 110),
//                             child: TextButton(
//                                 onPressed: () {},
//                                 child: Text(
//                                   'Forget password?',
//                                   style: TextStyle(color: Colors.black54),
//                                 )))
//                       ],
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.blue[800],
//                         borderRadius: BorderRadius.circular(50)),
//                     child: MaterialButton(
//                       minWidth: MediaQuery.of(context).size.width / 2,
//                       onPressed: () {},
//                       child: Text(
//                         'Log in',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("don't have an account?"),
//                       TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Sign up here',
//                             style: TextStyle(color: Colors.black87),
//                           )),
//                     ],
//                   ),
//                   Text('Or log in with'),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                           height: 30,
//                           width: 30,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.7),
//                                 spreadRadius: 5,
//                                 blurRadius: 7,
//                                 offset: Offset(
//                                     0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             radius: 20,
//                             child: CircleAvatar(
//                               child:
//                                   Image.asset('assets/images/facebook.jpg'),
//                             ),
//                           )),
//                       Container(
//                           height: 30,
//                           width: 30,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.7),
//                                 spreadRadius: 5,
//                                 blurRadius: 7,
//                                 offset: Offset(
//                                     0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             radius: 20,
//                             child: CircleAvatar(
//                               child:
//                                   Image.asset('assets/images/twitter2.jpg'),
//                               backgroundColor: Colors.white,
//                             ),
//                           )),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.7),
//                               spreadRadius: 5,
//                               blurRadius: 7,
//                               offset:
//                                   Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.white,
//                           radius: 20,
//                           child: CircleAvatar(
//                             child: Image.asset('assets/images/google1.jpg'),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
