// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../main.dart';
import '../../shared/shared_components.dart';
import '../../tensorflow/pushed_pageA.dart';
import '../../tensorflow/pushed_pageS.dart';
import '../../tensorflow/pushed_pageY.dart';

// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ShowVideoArmPressScreen extends StatefulWidget {

  final String? videoId;

  ShowVideoArmPressScreen({required this.videoId});

  @override
  _ShowVideoArmPressScreenState createState() => _ShowVideoArmPressScreenState();
}

class _ShowVideoArmPressScreenState extends State<ShowVideoArmPressScreen> {
  YoutubePlayerController? _controller;
  Color iconColor = Color.fromARGB(255, 200, 200, 200);

  void _skipBack() {
    final beginning = const Duration().inMilliseconds;
    final skip = (_controller!.value.position - const Duration(seconds: 5))
        .inMilliseconds;
    _controller!.seekTo(Duration(milliseconds: math.max(skip, beginning)));
  }

  bool _isPlayerReady = false;

  void _skipForward() {
    final end = _controller!.value.metaData.duration.inMilliseconds;
    final skip = (_controller!.value.position + const Duration(seconds: 5))
        .inMilliseconds;
    _controller!.seekTo(Duration(milliseconds: math.min(skip, end)));
  }

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: true,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    _controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void deactivate() {
    _controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  landscapeVideoYoutube(Orientation orientation) {
    return orientation == Orientation.landscape;
  }

  String durationFormatter(int milliSeconds) {
    var seconds = milliSeconds ~/ 1000;
    final hours = seconds ~/ 3600;
    seconds = seconds % 3600;
    var minutes = seconds ~/ 60;
    seconds = seconds % 60;
    final hoursString = hours >= 10
        ? '$hours'
        : hours == 0
        ? '00'
        : '0$hours';
    final minutesString = minutes >= 10
        ? '$minutes'
        : minutes == 0
        ? '00'
        : '0$minutes';
    final secondsString = seconds >= 10
        ? '$seconds'
        : seconds == 0
        ? '00'
        : '0$seconds';
    final formattedTime =
        '${hoursString == '00' ? '' : '$hoursString:'}$minutesString:$secondsString';
    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        showLeading: true,
        showActions: true,
        leadingIcon: Icons.arrow_back,
        actionsWidget: Icon(Icons.search, color: Colors.white),
        title: "Healthy Life",
          onPressLeading: (){
            Navigator.of(context).pop();
          }
      ),
      body: mainContainerWidelySpread(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Container(
              // padding: EdgeInsets.all(1.w),
              //*That's a dummy height and after filling the page with the elements
              //*..I should comment that height
              // height: 605.h,
              width: 327.w,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                    child: YoutubePlayer(
                      controller: _controller!,
                      showVideoProgressIndicator: true,
                      // aspectRatio: 16 / 9,
                      width: 400,


                      bottomActions: [
                        const SizedBox(width: 14.0),
                        CurrentPosition(),
                        const SizedBox(width: 8.0),
                        ProgressBar(
                          isExpanded: true,
                          colors: ProgressBarColors(),
                        ),
                        RemainingDuration(),
                        const PlaybackSpeedButton(),
                      ],
                      progressIndicatorColor: Colors.blueAccent,
                      topActions: <Widget>[
                        // InkWell(
                        //   onTap: _skipBack,
                        //   child: Icon(
                        //     CupertinoIcons.gobackward_15,
                        //     color: iconColor,
                        //     size: 18.0,
                        //   ),
                        // ),
                        SizedBox(width: 8.0.w),
                        Expanded(
                          child: Text(
                            _controller!.metadata.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        // SizedBox(width: 8.0.w),
                        // InkWell(
                        //   onTap: _skipForward,
                        //   child: Icon(
                        //     CupertinoIcons.goforward_15,
                        //     color: iconColor,
                        //     size: 18.0,
                        //   ),
                        // ),
                      ],
                      onReady: () {
                        _isPlayerReady = true;
                        setState(() {});
                      },
                      onEnded: (data) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text("Biceps Workout", style:  TextStyle(
                      color: MyColors.kMainLightColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),

                  Text(
                    " ${durationFormatter(
                      (_controller?.metadata.duration.inMilliseconds)! -
                          (_controller?.value.position.inMilliseconds)!,
                    )}",
                    style:  TextStyle(
                      color: MyColors.kMainLightColor,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text(
                  //   "- ${durationFormatter(
                  //     (_controller?.value.position.inMilliseconds)!,
                  //   )}",
                  //   style: const TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 12.0,
                  //   ),
                  // ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: _skipBack,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: MyColors.kMainLightColor,
                          size: 30.r,
                        ),
                      ),
                      SizedBox(width: 50,),

                      InkWell(
                        onTap: () {
                          if (_controller!.value.isPlaying) {
                            _controller!.pause();
                          } else {
                            _controller!.play();
                          }
                        },
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColors.kMainLightColor,
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            _controller!.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 30.r,
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),

                      InkWell(
                        onTap: _skipForward,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: MyColors.kMainLightColor,
                          size: 30.r,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 80,),
                  Material(
                    elevation: 0.2,
                    child: Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: InkWell(
                        onTap: (){

                                          onSelectA(context: context, modelName: 'posenet');

                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                          Text('Tap to Camera',style: TextStyle(

                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.camera_alt,size: 20,)
                        ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0.w),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void onSelectA(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}

void onSelectS(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageS(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}

void onSelectY(
    {required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageY(
        cameras: cameras!,
        title: modelName,
      ),
    ),
  );
}
