import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/buttom_navigate.dart';
import 'package:ui/components/items.dart';
import 'package:ui/components/tab_bar_view.dart';

class Home extends StatelessWidget {
   Home({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              // we need to have a row of icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.purple.shade300,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notification_important,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // A search field and a circular avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: 40,
                      width: 250,
                      child: CupertinoTextField(
                        placeholder: "Search for your product",
                        prefix: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              CupertinoIcons.search,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('images/airforce.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // with listview on the horizontal with the names of the item
              Expanded(child: TabBarViewS()),

              // the grid view with the item image , the name and the price,

              //buttom navigation bar with icons
              CustomNavigationBar(
              
                ),
            
            ],
          ),
        ),
      ),
    );
  }
}
