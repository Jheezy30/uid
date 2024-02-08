import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? iconData;
  final Color iconColor;
  final Color hintTextColor;

  MyTextfield({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.iconData,
     this.hintTextColor = Colors.grey,
    this.iconColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:TextStyle(color: hintTextColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey), // Set the outer border color to grey
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey), // Set the inner border color to grey
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        prefixIcon: iconData != null ? Icon(iconData, color: iconColor,) : null,
      ),
      obscureText: obscureText,
    );
  }
}