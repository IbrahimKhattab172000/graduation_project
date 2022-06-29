// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduation_project/screens/break_fast/eggs_screen.dart';

import 'toast_with_eggs.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({Key? key}) : super(key: key);

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:  [
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children:  [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(radius: 15,backgroundColor: Colors.grey,
                    child:Padding(
                      padding: EdgeInsetsDirectional.only(start: 7),
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                    ),

                  ),
                ),
                SizedBox(width: 88,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Breakfast',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                ) ,
              ],
            ),
          ),
          Expanded(

            child: GridView.count(crossAxisCount: 2,scrollDirection:Axis.vertical,physics:const BouncingScrollPhysics(),mainAxisSpacing:20,padding:EdgeInsetsDirectional.only(start: 30,top: 30,),children: [

              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>ToastWithEggs (),
                                ),);
                            },
                            child: Container(
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              height:113,

                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),

                                ),
                              ),
                              child: Image.asset('assets/images/eggs-avocado(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('Toast with eggs ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('214 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,
                            width: 220,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/EjQHdceqY7knZH3uXoqcMm62fRdqU7jA5ppLtzpE(1).jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Fruit Oats ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('236 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite_outline,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,
                            width: 270,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/OjMDRIJRtCsgUlI4OoIaSP8hxOXNVTf64CTTdHuD(1).jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Pancake with Oats ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('277 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite_outline,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/2YF5V25RfQpWJsUKvqtbGtBG5ow0A7y7C0gvKQV9(1).jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Eggs Muffin ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('66 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => EggsScreen(),
                                  ),);
                            },
                            child: Container(
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              height:113,

                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),

                                ),
                              ),
                              child: Image.asset('assets/images/افطار ٢(1).jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('Eggs ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('120 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,
                            width: 300,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/Large-Fustany-Breakfast-ideas-01(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Spinach Omelette ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('186 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite_outline,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,
                            width: 300,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/8.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Pancake with honey ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('210 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite_outline,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Stack(

                  children: [
                    Container(
                      width: 160,
                      height: 200,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1D3446),
                      ),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/فطور-صحي-للرياضيين(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Fried Eggs ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('310 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

                            ),
                            trailing: Icon(Icons.favorite_outline,color: Colors.white,),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
            ]
            ),

          )
        ],
      ),
    );
  }
}