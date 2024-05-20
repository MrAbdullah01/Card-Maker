import 'dart:async';

import 'package:card_maker/constants/images_path.dart';
import 'package:flutter/material.dart';

import '../onboard_screen/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(height: 250,width: 250,splashScreen),
          // SizedBox(height: 20,),
          // Text("Card Maker",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ],),
      ),
    );
  }
}
