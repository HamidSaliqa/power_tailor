
import 'package:flutter/material.dart'; 
import 'package:power_tailor/src/constants/colors.dart'; 


Widget customTextField({required String hintText , bool obscureText = false, controller, validator}){
  return  Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 50, 
      vertical: 10, 
    ),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      textAlign: TextAlign.right,
      cursorColor: Colors.brown[300],
      style: const TextStyle(color: p2),
      decoration: InputDecoration(
        
          contentPadding: const EdgeInsets.all(15),
          hintText: hintText,
          
          hintStyle: const TextStyle(color: p2,fontWeight: FontWeight.bold),
          hintTextDirection: TextDirection.rtl,
          filled: true,
          fillColor: tColor,
          
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: p2,width: 3)),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color:p2)),
           errorStyle: const TextStyle(
            locale: Locale('fa'), 
            
           ), 
           
           errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2), 
           )
      ),
    ),
  );
}
