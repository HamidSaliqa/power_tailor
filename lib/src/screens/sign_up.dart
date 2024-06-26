import 'package:flutter/material.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/common_widgets/custom_textfield.dart';
import '../common_widgets/back_button.dart';
import '../common_widgets/google_button.dart';
import '../constants/colors.dart';
import 'login_or_signup.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor:p1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                backIcon(context,onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginOrSignUp(),));
                }),
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  padding: const EdgeInsets.only(right: 30),
                  child: const Text(
                    "ایجاد حساب",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: p2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                ///GoogleButton
                googleButton(),
                const SizedBox(
                  height: 20,
                ),

                ///TextField
                customTextField(hintText: "نام"),
                const SizedBox(
                  height: 10,
                ),
                customTextField(hintText: "تخلص"),
                const SizedBox(
                  height: 10,
                ),
                customTextField(hintText: "ایمیل"),
                const SizedBox(
                  height: 10,
                ),
                customTextField(hintText: "رمز عبور", obscureText: true),
                const SizedBox(
                  height: 10,
                ),
                customTextField(hintText: "تایید رمز عبور", obscureText: true),
                const SizedBox(
                  height: 10,
                ),
                customTextField(hintText: "لایسنس"),

                ///lastButton
                const SizedBox(
                  height: 20,
                ),
                customButton(textButton: "ورود به حساب", onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "ورود",
                      style: TextStyle(
                          color:p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }




}
