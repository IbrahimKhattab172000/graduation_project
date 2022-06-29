// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'water_screen2.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..repeat();

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyClipPath(animation);
  }
}

// class MyClipPath extends StatelessWidget{
class MyClipPath extends AnimatedWidget {
  final Animation<double> animation;

  MyClipPath(this.animation) : super(listenable: animation);

  final Color backgroundColor = const Color(0xFF4386B7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children:  [

              Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){

                   return Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(children: [
              Center(
                child: Column(
                  children:  [
                    SizedBox(
                      height: 300,
                    ),
                    // Text(
                    //   '65%',
                    //   style: TextStyle(
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.black),
                    // ),
                    // Text(
                    //   '4030 ML/6200 ML',
                    //   style: TextStyle(fontSize: 25, color: Colors.black87),
                    // ),
                    SizedBox(
                      height: 200,
                    ),

                    // CircleAvatar(
                    //   radius: 30,
                    //   backgroundColor: Colors.black,
                    //   child: IconButton(
                    //      icon: Icon(Icons.add),
                    //
                    //     color: Colors.white,
                    //     onPressed: () {
                    //       Navigator.of(context).push(
                    //         MaterialPageRoute(
                    //           builder: (context) => MyAnimation2(),
                    //         ),
                    //       );
                    //     },
                    //     //size: 55,
                    //   ),
                    // ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: animation.value,
                child: ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      color: backgroundColor,
                      width: 1000,
                      height: 540,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: animation.value,
                child: ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      color: backgroundColor,
                      width: 1000,
                      height: 540,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 160,bottom: 80),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.add,size: 35,),

                      color: Colors.grey,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyAnimation2(),
                          ),
                        );
                      },
                      //size: 55,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 300),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        '65%',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '4030 ML/6200 ML',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

            ]),
          ),
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            0.0,
            size.width - ((i + 1) * size.width / 8),
            size.height - 500);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            size.height - 460,
            size.width - ((i + 1) * size.width / 8),
            size.height - 500);
      }
    }

    path.lineTo(0.0, 40.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
