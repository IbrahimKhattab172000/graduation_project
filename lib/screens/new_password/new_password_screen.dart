// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/layout_screen/layout_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'new_password_components.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              securityWidget(),
              SizedBox(
                height: 30.h,
              ),
              roundedWidget(
                height: 720.h,
                child: Column(
                  children: [
                    columnForMainTextWidgetsNewPassword(context),
                    SizedBox(
                      height: 30.h,
                    ),
                    textFormField(
                      labelText: "New password",
                      hintText: "Enter new password",
                      prefixWidget: Icon(Icons.lock),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    textFormField(
                      labelText: "Confirm password",
                      hintText: "Confirm new password",
                      prefixWidget: Icon(Icons.lock),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    defaultButton(
                      function: () {
                        navigateTo(
                          context,
                          LayoutScreen(),
                        );
                      },
                      text: "Submit",
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


