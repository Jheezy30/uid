import 'package:flutter/material.dart';
import 'package:ui/components/items.dart';
import 'package:ui/components/my_gridview.dart';

class TabBarViewS extends StatefulWidget {
  TabBarViewS({super.key});

  @override
  State<TabBarViewS> createState() => _TabBarViewSState();
}

class _TabBarViewSState extends State<TabBarViewS>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          controller: controller,
          tabs: [
            Tab(
              child: Text(
                "All",
                style: TextStyle(
                  color: Color(0xFF00008B),
                ),
              ),
            ),

            //second Tab
            Tab(
              child: Text(
                "Nike Airforce",
                style: TextStyle(
                  color: Color(0xFF00008B),
                ),
              ),
            ),

            // third tab
            Tab(
              child: Text(
                "Nike Airmax",
                style: TextStyle(
                  color: Color(0xFF00008B),
                ),
              ),
            ),

            //forth tab
            Tab(
              child: Text(
                "Air jordans",
                style: TextStyle(
                  color: Color(0xFF00008B),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBarView(
              
              controller: controller,
              children: [
                
                MyGridview(),
                MyGridview(),
                MyGridview(),
                MyGridview(),
            
               
              ],
            ),
          ),
        )
      ],
    );
  }
}
