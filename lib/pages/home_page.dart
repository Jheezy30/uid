import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                children: [
                  // the first frame of the image
                  Container(
                    height: 391,
                    width: 266,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/Frame 1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  //the second frame of the image
                  Container(
                    height: 391,
                    width: 266,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/Frame 2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset('images/nikehub.png'),
          const SizedBox(
            height: 10,
          ),
          Image.asset('images/Live.png'),
          const SizedBox(
            height: 10,
          ),
          Image.asset('images/Frame 4.png'),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 74,
              decoration: BoxDecoration(
                
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "Skip",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
