// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/otp/otp_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'forget_password_components.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),

              ///*I won't use decoration here. hence, using SizedBox is better option
              forgetPasswordMainPic(),
              SizedBox(
                height: 30.h,
              ),
              roundedContainer(
                height: 428.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBeforeEachTextFormField(text: "Email"),
                    SizedBox(
                      height: 10.h,
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
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: defaultButton(
                        background: MyColors.kLightPrimaryColor,
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OtpScreen(),
                            ),
                          );
                        },
                        text: "Submit",
                        height: 54.h,
                        width: 232.w,
                        radius: 40.r,
                      ),
                    ),
                    backToLogin(context),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class ForgetPassword extends StatelessWidget {
//   const ForgetPassword({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             color: Colors.blue[800],
//             child: Column(
//               children: [
//                 ListTile(
//                   leading: IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.arrow_back_ios_outlined,
//                         size: 20,
//                         color: Colors.black,
//                       )),
//                   horizontalTitleGap: 35,
//                   title: Text(
//                     'Healthy Life',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height / 3.4,
//                   margin: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                       image: const DecorationImage(
//                           image: AssetImage('images/ramzy.jpg'),
//                           fit: BoxFit.fill),
//                       borderRadius: BorderRadius.circular(30)),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.only(top: 40, bottom: 70),
//             decoration: BoxDecoration(
//                 color: Color(0xFFEEEEEE),
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50))),
//             height: MediaQuery.of(context).size.height / 1.9,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text(
//                   'Forget Password',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 1.5,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Email',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Container(
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             isCollapsed: true,
//                             prefixIcon: CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 child: Icon(
//                                   Icons.email_outlined,
//                                   color: Colors.black38,
//                                 )),
//                             filled: true,
//                             labelText: "Enter your Email",
//                             fillColor: Colors.white10,
//                             focusedBorder: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(38.0),
//                               borderSide: BorderSide(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.blue[800],
//                       borderRadius: BorderRadius.circular(50)),
//                   child: MaterialButton(
//                     minWidth: MediaQuery.of(context).size.width / 2,
//                     onPressed: () {},
//                     child: Text(
//                       'Submit',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Back to login',
//                       style: TextStyle(color: Colors.black87),
//                     ))
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
