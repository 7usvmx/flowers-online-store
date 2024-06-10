// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final prefixIcon;
  final suffixIcon;
  final lable;
  final keybordType;
  final bool isPassword;
  final controller;

  const CustomTextField({
    required this.lable,
    required this.prefixIcon,
    required this.keybordType,
    required this.isPassword,
    required this.controller,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      child: TextFormField(
        // validator: (value) {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keybordType,
        obscureText: isPassword,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mainColor500),
          ),
          labelText: lable,
          labelStyle: TextStyle(color: mainGrey),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconColor: mainColor500,
          suffixIconColor: mainColor500,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
