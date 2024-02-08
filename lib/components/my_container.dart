import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String thirdText;
  final IconData iconfirst;
  final IconData iconsecond;
  MyContainer({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.iconfirst,
    required this.iconsecond,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Curved border radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset:
                Offset(0, 5), // Elevation around left, right, and bottom sides
          ),
        ],
      ),
      child: Row(
        children: [
          //we had it children the 1st item should be a row
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              child: Icon(
                iconfirst,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFFD18701),
            ),
          ),
          const SizedBox(
            width: 5,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // the first text to work on

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  firstText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: secondText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      )),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 5),
                      child: Text(
                        thirdText,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CircleAvatar(
              radius: 15,
              backgroundColor:
                  Color(0xFFD18701), // Background color of the avatar
              child: Icon(
                iconsecond,

                size: 10,
                color: Colors.white, // Color of the checkmark icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
