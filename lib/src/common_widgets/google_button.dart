import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 


import '../constants/colors.dart';
googleButton() {
  return Container(
    height: 60,
    margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(

          side: const BorderSide(
            color: p2,
            width: 3,
          ),
          backgroundColor: tColor,
          foregroundColor: p2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          )
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         FaIcon(FontAwesomeIcons.google, size: 40),
          Text("رفتن به گوگل",
          
           style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    ),
  );
}