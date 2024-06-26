import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';
import 'package:power_tailor/src/screens/sign_up.dart';
import 'package:power_tailor/src/screens/start.dart';
import '../common_widgets/back_button.dart';
import 'login.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p1,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              backIcon(context, onPressed: () {
                Get.back();
              }),
              SvgPicture.asset(
                "assets/images/tailor1.svg",
                width: 200,
                height: 200,
                color: p2,
              ),
              customButton(
                textButton: "ورورد به حساب",
                onPressed: () {
                  Get.to(const Login());
                },
              ),
              customButton(
                  textButton: "ساخت حساب جدید",
                  onPressed: () {
                    Get.to(const SignUp());
                  },
                  width: 250),
              Image.asset("assets/images/TechLogo.png", height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
