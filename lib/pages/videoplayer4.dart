import 'package:socialmedia/pages/reeltemplate.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class videoplayer4 extends StatefulWidget {
  @override
  _videoplayerState createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer4> {


  late VideoPlayerController _controller;

  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.network('https://assets.mixkit.co/videos/preview/mixkit-family-walking-together-in-nature-39767-large.mp4')
    ..initialize().then((_) {
      setState(() {

      });
    });
_controller.play();
    _controller.setLooping(true);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video player',
      home: Scaffold(
        body: Stack(fit: StackFit.expand,

        children: [
          Container(height: 500,
            child: _controller.value.isInitialized?
              AspectRatio(aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),

        )
            :Container(),
          )
        ],),
      ),


    );  }
}
