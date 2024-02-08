import 'package:flutter/material.dart';
import 'package:ui/components/my_container.dart';

class Address extends StatelessWidget {
  Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // we need to build our back button and the address

          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20),
            child: Row(
              children: [
                // the icon for the back button
                Icon(
                  Icons.arrow_back,
                ),

                const SizedBox(
                  width: 50,
                ),
                // the text to display the heading
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF013458),
                  ),
                )
              ],
            ),
          ),
          // we are creating containers in remaining space available
          const SizedBox(
            height: 100,
          ),
          MyContainer(
            firstText: "Home",
            secondText: "House No. #MW586/9. Street No #6,\n",
            thirdText: "Madina Town -UN\n",
            iconfirst: Icons.home,
            iconsecond: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),

          MyContainer(
            firstText: "Warehouse",
            secondText: "House No. #Mv5896/2. Street No #5,\n",
            thirdText: "Adentan -Village\n",
            iconfirst: Icons.warehouse,
            iconsecond: Icons.check,
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            width: 326,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5), // Curved border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(
                      0, 5), // Elevation around left, right, and bottom sides
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Add new address ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF013458),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
