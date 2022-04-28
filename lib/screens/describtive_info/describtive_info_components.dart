// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';

// class ManOrWomen extends StatefulWidget {
//   double width;
//   double height;
//   double radius;
//   String image;
//   bool? isMan;
//   ManOrWomen({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.radius,
//     required this.image,
//     this.isMan,
//   }) : super(key: key);

//   @override
//   State<ManOrWomen> createState() => _ManOrWomenState();
// }

// class _ManOrWomenState extends State<ManOrWomen> {
//   bool isChosen = false;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isChosen = !isChosen;
//         });
//       },
//       child: Container(
//         height: widget.height.w + 5,
//         width: widget.width.h + 5,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(widget.radius.r),
//           color: isChosen ? MyColors.kMainLightColor : Colors.white,
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(5.0.h),
//           child: Container(
//             width: widget.width.w,
//             height: widget.height.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(widget.radius.r),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(widget.radius.r),
//               child: Image.asset(
//                 widget.image,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

Widget manOrWoman({
  required double width,
  required double height,
  required double radius,
  required String image,
  required Color color,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height + 5,
      width: width + 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(5.h),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius.r),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget inputRow({
  required String text,
  required TextEditingController controller,
  required TextInputType type,
  required FormFieldValidator validator,
  String? label,
  TextStyle? textStyle,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 80.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: MyColors.kMainLightColor,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: MyColors.kExtraLightMainColor,
              width: 2.w,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 150.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.white,
          ),
          child: defaultTextFormField(
            controller: controller,
            type: type,
            validator: validator,
            lable: label,
            textStyle: textStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget showYourFitness() {
  return Padding(
    padding: EdgeInsets.only(
      top: 5.h,
      bottom: 2.h,
      left: 20.h,
    ),
    child: Text(
      "Show you fitness",
      style: TextStyle(fontSize: 15.sp),
    ),
  );
}

Widget manOrWomanText({
  required String text,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: 20.sp,
      ),
    );
