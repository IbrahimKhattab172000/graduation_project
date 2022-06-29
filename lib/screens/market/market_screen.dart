// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/shared/shared_components.dart';

import '../../constants.dart';
import 'market_components.dart';

class MarketScreen extends StatelessWidget {
  MarketScreen({Key? key}) : super(key: key);

  List textList = [
    'SERIOUS MASS',
    'MASS TECH PROTIEN',
    'WHEY PROTIEN',
    'PURE WHEY ISOLATE 95',
  ];

  List imgList = [
    'assets/images/mass.png',
    'assets/images/MASSTECHPROTIEN.png',
    'assets/images/Whey-Protein_preview_rev_1.png',
    'assets/images/FhAX1MbZBRwjtb86HODzOoUjJo3AnSbfSBQFqVME_preview_rev_1.png',
  ];

  Widget partnerWidget(
    textList,
      imgList,
  ) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.w),
        child: Container(
          width: 330.w,
          height: 210.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        textList,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.sp, color: MyColors.kSpecialMainColor),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.apartment_rounded,
                      size: 30.w,
                      color: MyColors.kSpecialMainColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Our place help you to practice your exercises in a comfortable\nenvironment that helps improve your physical state",
                  style: TextStyle(fontSize: 13.sp, color: MyColors.kLightGray),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0.h),
                        child: InkWell(
                          onTap: () {},
                          focusColor: MyColors.kMainLightColor,
                          hoverColor: MyColors.kMainLightColor,
                          child: Container(
                            height: 50.w,
                            width: 130.w,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Show on map",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: MyColors.kMaindarkColor),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 80,
                        height: 80,
                        child: Image.asset(imgList,fit: BoxFit.cover,))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        showLeading: true,
        showActions: true,
        leadingIcon: Icons.menu,
        actionsWidget: Icon(Icons.search, color: Colors.white),
        title: "Market",
      ),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Container(
              padding: EdgeInsets.all(5.w),
              //*That's a dummy height and after filling the page with the elements
              //*..I should comment that height
              height: 605.h,
              width: 327.w,
              decoration: BoxDecoration(
                color: MyColors.kSpecialLightGreyColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          partnerWidget(textList[index], imgList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                      itemCount: textList.length,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
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
