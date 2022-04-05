// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/screens/new_password/new_password_screen.dart';
import 'package:graduation_project/screens/otp/otp_components.dart';
import 'package:graduation_project/shared/shared_components.dart';

import 'otp_from.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);

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
              mailBoxWidget(),
              SizedBox(
                height: 30.h,
              ),
              roundedContainer(
                height: 428.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    columnForMainTextWidgetsOtp(),
                    SizedBox(
                      height: 30.h,
                    ),
                    OtpForm(),
                    SizedBox(
                      height: 15.h,
                    ),
                    resendText(),
                    SizedBox(
                      height: 15.h,
                    ),
                    defaultButton(
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewPasswordScreen(),
                          ),
                        );
                      },
                      text: "Verify",
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
