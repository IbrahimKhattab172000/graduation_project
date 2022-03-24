// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'new_password_components.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
              securityWidget(),
              SizedBox(
                height: 30.h,
              ),
              roundedContainer(
                height: 428.h,
                child: Column(
                  children: [
                    columnForMainTextWidgetsNewPassword(),
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
                      background: MyColors.kLightPrimaryColor,
                      function: () {},
                      text: "Submit",
                      height: 54.h,
                      width: 232.w,
                      radius: 33.r,
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
