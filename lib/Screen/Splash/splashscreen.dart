import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsaap_aap_run/Wtdgets/uihelper.dart';

import 'package:whatsaap_aap_run/Screen/OnBoarding/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){  // Corrected method name
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(  // Assuming CustomText is properly defined in UiHelper
                text: "WhatsApp",
                height: 18,
                fontWeight: FontWeight.bold
            )
          ],
        ),
      ),
    );
  }
}
