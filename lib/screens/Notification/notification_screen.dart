// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'notification_components.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        showLeading: true,
        showActions: true,
        leadingIcon: Icons.menu,
        actionsWidget: Icon(Icons.search, color: Colors.white),
        title: "Notification",
      ),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Container(
              //*That's a dummy height and after filling the page with the elements
              //*..I should comment that height
              height: 605.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: MyColors.kSpecialLightPrimary,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  //*Expanded here is important than you yasta
                  Expanded(
                    child: ListView.builder(
                      // shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => notificationWidget(),
                      itemCount: 20,
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
