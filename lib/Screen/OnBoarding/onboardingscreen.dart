import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:whatsaap_aap_run/Screen/login/loginscreen.dart';
import 'package:whatsaap_aap_run/Wtdgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp", height: 20, color: Colors.black),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read Out", height: 14),
                UiHelper.CustomText(
                  text: " Privacy Policy. ",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                UiHelper.CustomText(
                  text: "Tap 'Agree and Continue'",
                  height: 14,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: "to accept the",
                  height: 14,
                ),
                UiHelper.CustomText(
                  text: " Teams of Service.. ",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LogingScreen()));
          }, buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
