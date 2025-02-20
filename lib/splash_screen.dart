
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bmi_calculator/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // function for set a timer
  startTimer() async{
    Timer(Duration( seconds: 5),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }


  @override
  void initState() {

    // TODO: implement initState
    super.initState();

    // call a function

    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/BMI_splash.png",
              width: 250,
              height: 200,),

            //SizedBox(width: 0,),

            Transform.translate(
              offset: Offset(0, -40),
              child: Center(
                child: Text("CALCULATOR", style: GoogleFonts.acme(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),),
              ),
            ),

            SizedBox(height: 10,),

            LinearProgressIndicator(
              color: Color(0xFF9ACFCF),
              minHeight: 3,
            )
          ],



        ),
      ),

    );
  }
}
