import 'package:flutter/material.dart';

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
          Icon(Icons.g_mobiledata),

          Text("رفتن به گوگل"),
        ],
      ),
    ),
  );
}