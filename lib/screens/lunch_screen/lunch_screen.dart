// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:graduation_project/screens/lunch_screen/corn_soup_screen.dart';
import 'package:graduation_project/screens/lunch_screen/Pasta_with_basil_screen.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
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
                  child: Text('Launch',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
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
                            child: Image.asset('assets/images/8.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Oats with bechamel ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('560 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/7.jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Chicken ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('320 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/4.jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Tuna Salad ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('185 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PastaWithBasil(),
                                ),
                              );
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
                              child: Image.asset('assets/images/Au67OO5Oa2AziaT9yHaGOy1OFWzyykfqVAGUzV1J(1).jpeg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('basta with basil ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('250 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/1.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Broccoil soup ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('65 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                                return CornSoupScreen();
                              }),);
                            },
                            child: Container(
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              height:113,
                              width: 300,

                              decoration: const BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(40),
                                  bottomStart: Radius.circular(40),

                                ),
                              ),
                              child: Image.asset('assets/images/78617139e8402db85f65d16c1e148c4b_w750_h500(1).jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                            ),
                          ),
                          const ListTile(title: Text('Corn Soup ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('178 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/3.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Chicken Tikka  ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('350 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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
                            child: Image.asset('assets/images/2.jpg',alignment: Alignment.topLeft,fit: BoxFit.cover,),

                          ),
                          const ListTile(title: Text('Pasta White Sauce ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle:Text('250 Kcal ',style: TextStyle(color: Colors.white,fontSize: 11,),

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