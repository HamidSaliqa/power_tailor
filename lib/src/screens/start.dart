import 'package:flutter/material.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';
import 'login_or_signup.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: p1,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///image for logo
              SizedBox(
                  width: 200,
                  height: 300,
                  child: Image.asset(
                    "assets/images/TechLogo.png",
                    fit: BoxFit.cover,
                  )),
          
              ///start button
              customButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginOrSignUp(),
                        ));
                  },
                  textButton: "شروع کنید"),
              const Column(
                children: [
                  Text("power-tailor",
                      style: TextStyle(
                          color: tColor,
                          fontFamily: "CustomFont",
                          fontSize: 20)),
                   Text("powered by power-tech",
                      style: TextStyle(
                          color: tColor, fontFamily: "CustomFont")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
