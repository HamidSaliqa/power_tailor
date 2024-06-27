import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power_tailor/src/common_widgets/custom_textfield.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';
import 'package:power_tailor/src/controllers/controller.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../common_widgets/back_button.dart';
import '../common_widgets/google_button.dart';

class Login extends StatelessWidget {
  Login({super.key});

  HomeController homeCtrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: homeCtrl.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  backIcon(context, onPressed: () {
                    Get.back();
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
                  customTextField(
                      hintText: "ایمیل",
                      controller: homeCtrl.emailedtCtrl,
                      validator: (value) {
                        if (value == '') {
                          return 'لطفا ایمیل خود را وارد نمائید';
                        } else {
                          return null;
                        }
                      }),
                  customTextField(
                      hintText: "رمز عبور",
                      obscureText: true,
                      controller: homeCtrl.passwrdedtCtrl,
                      validator: (value) {
                        if (value == '') {
                          return 'لطفا رمز عبور خود را وارد نمائید';
                        } else {
                          return null;
                        }
                      }),
                  customTextField(
                      hintText: "لایسنس",
                      controller: homeCtrl.licenseEdtCtrl,
                      validator: (value) {
                        if (value == '') {
                          return 'لطفا لایسنس خود را وارد نمائید';
                        } else {
                          return null;
                        }
                      }),
                  TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: const Text(
                      "رمز خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent),
                    ),
                    child: const Text(
                      "لایسنس خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customButton(
                      textButton: "ورود به حساب",
                      onPressed: () {
                        if (homeCtrl.formKey.currentState!.validate()) {
                          EasyLoading.showSuccess('با موفقیت وارد حساب شدید');
                        }
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
 
}
