import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors.dart';

backIcon(BuildContext context, {required VoidCallback onPressed}) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: InkWell(
          onTap: onPressed,
          child: SvgPicture.asset(
            "assets/images/Vector.svg",
            height: 30,
            color: p2,
          ),
        ),
      ),
    ],
  );
}
