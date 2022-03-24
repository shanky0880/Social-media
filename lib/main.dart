import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'homepage.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(MyApp());
}

void initialization(BuildContext context) async {

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(primarySwatch: Colors.grey));
  }
}