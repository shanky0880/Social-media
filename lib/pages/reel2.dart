import 'package:flutter/material.dart';
import 'package:socialmedia/pages/reeltemplate.dart';
import 'package:socialmedia/pages/videoplayer.dart';
import 'package:socialmedia/pages/videoplayer2.dart';
import 'package:socialmedia/pages/videoplayer3.dart';
import 'package:socialmedia/pages/videoplayer4.dart';
import 'package:socialmedia/pages/videoplayer5.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    List<Widget> reel = [
      Stack(
        children: [
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,

            child: videoplayer(),


          ),
          reel_temp()
        ],
      ),
      Stack(
        children: [
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,

            child: videoplayer2(),


          ),
          reel_temp()
        ],
      ),
      Stack(
        children: [
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,

            child: videoplayer3(),


          ),
          reel_temp()
        ],
      ),

      Stack(
        children: [
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,

            child: videoplayer4(),


          ),
          reel_temp()
        ],
      ),
      Stack(
        children: [
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,

            child: videoplayer5(),


          ),
          reel_temp()
        ],
      ),


    ];
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: reel,
          controller: controller,
        ),
      ),



    );
  }
}