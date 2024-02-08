
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  

  CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0, // Assuming default index is 0
      
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          color: Colors.grey.shade500,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
             color: Colors.grey.shade500,
            ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
             color: Colors.grey.shade500,
            ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.grey.shade500,
            ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey.shade500,
            ),
          label: 'Profile',
        ),
      ],
    );
  }
}
