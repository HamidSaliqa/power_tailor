import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              backIcon(context,onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Start(),));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                },
              ),
           
              customButton(
                  textButton: "ساخت حساب جدید", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ));
              }, width: 250),
            
              Image.asset("assets/images/TechLogo.png", height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
