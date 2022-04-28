// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

//Todo: Adding some functionalities to extraInputMainWidget();

class ExtraInputMainWidget extends StatefulWidget {
  double? width;
  double? height;
  String text;
  ExtraInputMainWidget({
    Key? key,
    required this.width,
    this.height,
    required this.text,
  }) : super(key: key);

  @override
  State<ExtraInputMainWidget> createState() => _ExtraInputMainWidgetState();
}

class _ExtraInputMainWidgetState extends State<ExtraInputMainWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8.h,
        bottom: 8.h,
        right: 8.h,
        left: 8.h,
      ),
      height: widget.height ?? 38.h,
      width: widget.width,
      decoration: BoxDecoration(
        color: isPressed
            ? MyColors.kMainLightColor
            : MyColors.kExtraLightMainColor,
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.r),
          ),
        ),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// Widget extraInputMainWidget({
//   required double width,
//   double? height,
//   required String text,
// }) {
//   return InkWell(
//     child: Container(
//       margin: EdgeInsets.only(
//         top: 8.h,
//         bottom: 8.h,
//         right: 8.h,
//         left: 8.h,
//       ),
//       height: height ?? 38.h,
//       width: width,
//       decoration: BoxDecoration(
//         color: MyColors.kLightGray,
//         borderRadius: BorderRadius.circular(22.r),
//       ),
//       child: OutlinedButton(
//         style: OutlinedButton.styleFrom(
//           side: BorderSide(
//             color: Colors.transparent,
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(22.r),
//           ),
//         ),
//         onPressed: () {},
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 18.sp,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

Widget mainTextInTheScreen({required String text}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
      color: MyColors.kMaindarkColor,
    ),
  );
}
