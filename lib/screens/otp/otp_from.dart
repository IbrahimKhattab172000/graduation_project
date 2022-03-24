// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/otp/otp_components.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          digitalCode(
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp),
              onChanged: (value) {
                ///We should store our value also here but we are working with UI only right now
                nextField(value: value, focusNode: pin2FocusNode);
              },
              decoration: otpInputDecoration,
            ),
          ),
          digitalCode(
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp),
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
              decoration: otpInputDecoration,
            ),
          ),
          digitalCode(
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp),
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
              decoration: otpInputDecoration,
            ),
          ),
          digitalCode(
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp),
              onChanged: (value) {
                pin4FocusNode!.unfocus();
              },
              decoration: otpInputDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
