import 'package:flutter/material.dart';

class AnotherSplash extends StatelessWidget {
  const AnotherSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade50,
                Colors.grey.shade900,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              //we need to have the nike signs in the row
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 25),
                child: Row(
                  children: [
                    //first nike sign
                    Image.asset('images/NIKE.png'),

                    const SizedBox(
                      width: 20,
                    ),

                    // the second nike sign
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('images/NIKE.png'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              //we need to have the frame which should be placed around the center
              Column(
                children: [
                  Image.asset('images/Frame.png'),
                  Padding(
                    
                    padding: const EdgeInsets.only(top: 0 , right: 150),
                    child: Image.asset('images/NIKE.png'),
                  ),
                ],
              ),

              const SizedBox(height: 10,),
              
              //we need to have the nikee sign
              Image.asset('images/Rectangle.png'),

              const SizedBox(height: 10,),

              //underneath it we need to have the live your life frame
              Image.asset('images/LIVE YOUR PERFECT.png'),
            ],
          )),
    );
  }
}
