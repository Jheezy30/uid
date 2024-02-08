import 'package:flutter/material.dart';
import 'package:ui/components/items.dart';

class MyGridview extends StatelessWidget {
  const MyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
        imagepath: "images/flowers.png",
        name: "Nike airmax",
        shopName: "jacob's shop",
        iconData: Icons.favorite,
        location: "Legon-Accra",
      ),
      Item(
        imagepath: "images/nike_airforce.png",
        name: "Nike Metcom",
        shopName: "Roger's shop",
        iconData: Icons.favorite,
        location: "Adenta-Accra",
      ),
      Item(
        imagepath: "images/nike_green.png",
        name: "Nike down",
        shopName: "Paul's shop",
        iconData: Icons.favorite,
        location: "Madina-Accra",
      ),
      Item(
        imagepath: "images/redish.png",
        name: "Nike one",
        shopName: "Ben's shop",
        iconData: Icons.favorite,
        location: "Legon-Accra",
      ),

       Item(
        imagepath: "images/lll.png",
        name: "air force 2",
        shopName: "Paul's shop",
        iconData: Icons.favorite,
        location: "Legon-Accra",
      ),

       Item(
        imagepath: "images/ggg.png",
        name: "Airmax 2",
        shopName: "Jacob's shop",
        iconData: Icons.favorite,
        location: "Legon-Accra",
      ),

       Item(
        imagepath: "images/low.png",
        name: "Nike one",
        shopName: "Ben's shop",
        iconData: Icons.favorite,
        location: "Legon-Accra",
      ),








    ];
    final double crossAxisSpacing = 31.4;
    final itemWidth = (MediaQuery.of(context).size.width - crossAxisSpacing) / 2;
        
    final itemHeight = 211.47; 
    final overlayHeight =
        itemHeight / 3; 

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: 15,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        Item item = items[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: itemWidth,
                height: itemHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  item.imagepath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
               borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30), 
                ),
                child: Container(
                  color: Colors.white,
                     
                  height: overlayHeight,
                  width: itemWidth,
                  
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 15 , right: 30),
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "${item.name}",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        ),
                    ),
                      
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        ' ${item.shopName}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color (adjust as needed)
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        //we stack the icon and the text 
                        Row(
                          
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.grey.shade600,
                            ),

                            Text(
                              "${item.location}",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              ),
                          ],
                        ),

                        const SizedBox(width: 15,),
                        
                        Icon(
                          item.iconData,
                          size: 16,
                          color: Colors.grey.shade600,
                          
                        ),

                        

                      ],

                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
