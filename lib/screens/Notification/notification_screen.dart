// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

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
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  //*That white container is so important
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1.0.h),
                      child: Column(
                        children: [
                          TabBar(
                            indicator: BoxDecoration(
                              color: MyColors.kMainLightColor,
                              borderRadius: BorderRadius.circular(25.0.r),
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: MyColors.kMaindarkColor,
                            tabs: [
                              Tab(
                                child: notificationTabBarItem(
                                  text: "All",
                                ),
                              ),
                              Tab(
                                child: notificationTabBarItem(
                                  text: "Unread",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 600.h, //height of TabBarView
                            decoration: BoxDecoration(),
                            child: TabBarView(
                              physics: BouncingScrollPhysics(),
                              children: [
                                //*First item
                                notificationTabBarViewWidget(),
                                //*Second item
                                notificationTabBarViewWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
