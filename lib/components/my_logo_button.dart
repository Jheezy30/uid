import 'package:flutter/material.dart';

class MyLogoButton extends StatelessWidget {
  final void Function()? onTap;
  final String imagePath;
  MyLogoButton({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 38,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          shape: BoxShape.rectangle,
        ),
       child: Center(
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
            
          ),
        ),
      ),
    );
  }
}
