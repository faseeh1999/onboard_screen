import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard_screen/screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('images/un1.png'),
        title: "Find the best Schools",
        body:
            "Enable Yourself to find the best possible school in all over Lahore",
        footer: Text("@Find My School App"),
      ),
      PageViewModel(
        image: Image.asset('images/un4.png'),
        title: "Find the best Schools",
        body:
            "Enable Yourself to find the best possible school in all over Lahore",
        footer: Text(
          "@Find My School App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('images/un5.png'),
        title: "Find the best Schools",
        body:
            "Enable Yourself to find the best possible school in all over Lahore",
        footer: Text("@Find My School App"),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      routes: {
        '/': (context) => MyApp(),
        '/details': (context) => dashboard(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Find My School",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xfffafafa),
          elevation: 0.0,
        ),
        body: IntroductionScreen(
          done: Text(
            "Get Started",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onDone: () {
            // Within the `FirstRoute` widget

            Navigator.pushNamed(
              context,
              '/details',
            );
          },
          pages: getPages(),
        ),
      ),
    )); //Material App
  }
}
