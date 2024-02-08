import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 2,
        shadowColor: Colors.white,
        child: Container(
          height: 50,
          width: 242,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Color(0xFF013458),
                Color(0xFF013458),
                Color(0xFF013458),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
