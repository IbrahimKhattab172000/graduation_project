// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../inputs_one/inputs_one_screen.dart';
import 'signup_components.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: roundedContainer(
              height: 700.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  signupText(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: addProfilePicStack(),
                  ),
                  textBeforeEachTextFormField(text: "Name"),
                  textFormField(
                      labelText: "Name",
                      hintText: "Enter your name",
                      prefixWidget: Icon(Icons.person)),
                  textBeforeEachTextFormField(text: "Email"),
                  textFormField(
                    labelText: "Email",
                    hintText: "Enter your name",
                    prefixWidget: Icon(Icons.email),
                  ),
                  textBeforeEachTextFormField(text: "Phone Number"),
                  textFormField(
                    labelText: "Number",
                    hintText: "Enter your number",
                    prefixWidget: Icon(Icons.phone),
                  ),
                  textBeforeEachTextFormField(text: "Password"),
                  textFormField(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    isPassword: isPassword,
                    prefixWidget: Icon(Icons.lock),
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
                  textBeforeEachTextFormField(text: "Confirm Password"),
                  textFormField(
                    labelText: "Confirm",
                    hintText: "Confirm Password",
                    prefixWidget: Icon(Icons.lock),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => InputsScreen(),
                          ),
                        );
                      },
                      text: "Sign up",
                    ),
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
