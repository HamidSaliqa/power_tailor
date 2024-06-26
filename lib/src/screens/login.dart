import 'package:flutter/material.dart';
import 'package:power_tailor/src/common_widgets/custom_textfield.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';

import '../common_widgets/back_button.dart';
import '../common_widgets/google_button.dart';
import 'login_or_signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                backIcon(context, onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginOrSignUp(),
                      ));
                }),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "ورود",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: p2,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                googleButton(),
                customTextField(hintText: "ایمیل"),
                customTextField(
                  hintText: "رمز عبور",
                  obscureText: true,
                ),
                customTextField(
                  hintText: "لایسنس",
                ),
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "رمز خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "لایسنس خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                customButton(textButton: "ورود به حساب", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
