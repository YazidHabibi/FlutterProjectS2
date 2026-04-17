// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:newproject/API/projectAPI.dart';  

// import 'package:newproject/kamis/harikamis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Projectapi(),
      // home: AnimatedSplashScreen(
      //   splash: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         SizedBox(width: 100, height: 100, child: Icon(Icons.home, size: 70,)),
      //       ],
      //     ),
      //   ),
      //   nextScreen: Harijumat(),
      // ),
    );
  }
}
