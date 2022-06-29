// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimation2 extends StatefulWidget {
  const MyAnimation2({Key? key}) : super(key: key);

  @override
  _MyAnimation2State createState() => _MyAnimation2State();
}

class _MyAnimation2State extends State<MyAnimation2>
    with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this)..repeat();

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyClipPath(
        animation
    );

  }
}

// class MyClipPath extends StatelessWidget{
class MyClipPath extends AnimatedWidget {
  final Animation<double> animation;

  MyClipPath(this.animation)
      : super(listenable: animation);

  final Color backgroundColor = const Color(0xFF4386B7);

  final items = [
    '100 ml',
    '150 ml',
    '200 ml (glass)',
    '250 ml (cup)',
    '300 ml',
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 30,),
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
          Center(
            child: Column(children: const [
              SizedBox(height: 100,),
              CircleAvatar(radius: 25,backgroundColor:Color(0xFF03045E),child: Icon(Icons.check,color: Colors.white,size: 50,),),
              Text('WATER',style: TextStyle(fontSize: 20,color: Colors.black87,),)
            ],),
          ),
          Expanded(
            child: Stack(children: [
              // Center(
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 100,
              //       ),
              //       Text(items[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 29),),
              //       SizedBox(
              //           height: 330,
              //           child: CupertinoPicker(
              //             itemExtent: 65,
              //             looping: true,
              //             onSelectedItemChanged: (index) {
              //               final item = items[index];
              //               print('Selected Item:$item');
              //             },
              //             children: items
              //                 .map((item) => Center(
              //               child: Text(
              //                 item,
              //                 style: const TextStyle(
              //                     fontSize: 25, color: Colors.black87),
              //               ),
              //             ))
              //                 .toList(),
              //           ))
              //     ],
              //   ),
              // ),
              Positioned(
                bottom: 0,
                right: animation.value,
                child: ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      color: backgroundColor,
                      width:1000,
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
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(items[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 29),),
                    SizedBox(
                        height: 330,
                        child: CupertinoPicker(
                          itemExtent: 65,
                          looping: true,
                          onSelectedItemChanged: (index) {
                            final item = items[index];
                            print('Selected Item:$item');

                          },
                          children: items
                              .map((item) => Center(
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white),
                            ),
                          ))
                              .toList(),
                        ))
                  ],
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