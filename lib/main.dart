import 'package:card_maker/constants/colors.dart';
import 'package:card_maker/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context,orientation,screenType){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Card Maker',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
          colorScheme: ColorScheme.fromSeed(seedColor: appColor,primary: appColor),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      );
    });
  }
}

