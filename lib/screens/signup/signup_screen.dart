// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/describtive_info/describtive_info_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'signup_components.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPassword = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        onPressLeading: () {
          Navigator.of(context).pop();
        },
      ),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: roundedWidget(
              height: 750.h,
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
                    controller: emailController,
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
                    controller: passwordController,
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
                      function: () async {
                        await signUp();

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DescribtiveInfo(),
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

  Future signUp() async {
    try {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
