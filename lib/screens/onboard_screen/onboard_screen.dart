import 'package:card_maker/constants/images_path.dart';
import 'package:card_maker/screens/dashboard_screen/dashboard_screen.dart';
import 'package:card_maker/widgets/submit_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child:CarouselSlider(items: [
            Image.asset(bg_1,),
            Image.asset(bg_2),
            Image.asset(bg_3),
          ],
              options: CarouselOptions(
                aspectRatio: 5/4,
                viewportFraction: 1.5,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.linearToEaseOut,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SubmitButton(
            title: "Get Started",
            press: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashBoardScreen()));
            }),
      ),
    );
  }
}
