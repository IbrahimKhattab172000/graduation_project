// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace, prefer_const_constructors_in_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/dinner_screen/dinner_screen.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../articles_screen/articles_screen.dart';
import '../break_fast/breakfast_screen.dart';
import '../lunch_screen/lunch_screen.dart';
import '../navigation_drawer/navigation_drawer_screen.dart';
import '../search_screen/search_screen.dart';
import '../water/water_screen1.dart';
import 'home_components.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: simpleAppBar(
        showActions: true,
        actionsWidget: Icon(Icons.search),
        onPressAction: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return GridSearchScreen();
          }),);
        },
        showLeading: true,
        leadingIcon: Icons.menu,
        onPressLeading: () {
          _scaffoldKey.currentState!.openDrawer();
        },
      ),
      drawer: NavigationDrawerScreen(),
      body: Container(
        color: MyColors.kMainLightColor,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              storiesSection(),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Recommended for you"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/Backandbiceps.jpg",
                      text: "Back and biceps",
                    ),
                    mainComponent(
                      imgSrc: "assets/images/cardioexercises.jpg",
                      text: "cardio exercises",
                    ),
                    mainComponent(
                      imgSrc: "assets/images/cardioexercises.jpg",
                      text: "cardio exercises",
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Advices"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/water.jpg",
                      text: "Water",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyAnimation(),
                          ),
                        );
                      },
                    ),
                    mainComponent(
                      imgSrc: "assets/images/sleep.jpg",
                      text: "Sleep",
                    ),
                    mainComponent(
                      imgSrc: "assets/images/articles.jpg",
                      text: "Articles",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return ArticlesScreen();
                        }),);
                      },
                    ),


                  ],
                ),
              ),
              SizedBox(height: 5.h),
              rowBeforeTheCategories(text: "Meals"),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    mainComponent(
                      imgSrc: "assets/images/Breakfast.jpg",
                      text: "Breakfast",
                      height: 134.h,
                      width: 115.w,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return BreakfastScreen();
                        }),);
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    mainComponent(
                      imgSrc: "assets/images/Lunch.jpg",
                      text: "Lunch",
                      height: 134.h,
                      width: 115.w,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return LaunchScreen();
                        }),);
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    mainComponent(
                      imgSrc: "assets/images/Dinner.jpg",
                      text: "Dinner",
                      height: 134.h,
                      width: 115.w,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return DinnerScreen();
                        }),);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
