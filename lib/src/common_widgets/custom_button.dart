import 'package:flutter/material.dart';
import 'package:power_tailor/src/constants/colors.dart'; 

Widget customButton(
    {required String textButton,
    required VoidCallback onPressed,
    double? fSize,
    double? width,
    double? height}) {
  return ElevatedButton(
    style: ButtonStyle(
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 10, 
        )),
        backgroundColor: const MaterialStatePropertyAll(p2),
        // fixedSize: MaterialStatePropertyAll(Size(width ?? 200, height ?? 80)),
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
    onPressed: onPressed,
    child: Text(
        textAlign: TextAlign.center,
        textButton,
        style: TextStyle(
            color: tColor, fontSize: fSize ?? 25, fontFamily: "CustomFont")),
  );
}
