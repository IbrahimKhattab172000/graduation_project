// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduation_project/screens/dinner_screen/granola_with_honey_screen.dart';

import 'Yogurt_granola_screen.dart';

class DinnerScreen extends StatefulWidget {
  const DinnerScreen({Key? key}) : super(key: key);

  @override
  State<DinnerScreen> createState() => _DinnerScreenState();


}

class _DinnerScreenState extends State<DinnerScreen> {
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
                SizedBox(width: 105,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Dinner',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
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
                          Container(
                            clipBehavior:Clip.antiAliasWithSaveLayer,
                            height:113,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/c5aa8aabb396769d5576ab2901e0dddb_w750_h500.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Oats with honey ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('343 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return YogurtGranolaScreen ();
                              }),);
                            },
                            child: Container(
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              height:113,
                              width: 220,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),

                                ),
                              ),
                              child: Image.asset('assets/images/22e247e0a451eb10bf8147617f6a014e_w750_h500(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('Yogurt granola ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('145 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return GranolaWithHoneyScreen();
                              }),);
                            },
                            child: Container(
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              height:113,
                              width: 270,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),

                                ),
                              ),
                              child: Image.asset('assets/images/e7bc187b49d56d0b782cff2c2625d64d_w750_h500(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('granola with honey ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('95 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/ce121e554ed6b49c54723b511f29d7b7_w750_h500.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Oatmeal cake ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('180 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/1939568f8b7ec8bc7b722fad5ba8d7ff_w750_h500.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Oats pancake ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('186 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/9RGtBJBZAwZ3tHoK1WjK3C9493XtWS4IX9VjToJw.jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Oats with tomato ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('260 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/سلطة-الزبادي-بالخيارo.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Yogurt Salad  ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('300 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            height:110,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(40),
                                bottomStart: Radius.circular(40),

                              ),
                            ),
                            child: Image.asset('assets/images/سلطة-البطاطس-الصحية-بالفلفل-الألوان.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Potato Salad ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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