import 'package:flutter/material.dart';
import 'package:ui/components/my_button.dart';
import 'package:ui/components/my_logo_button.dart';
import 'package:ui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 150),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //this contains the heading which is a text
              Column(
                children: [
                  Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF012742),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Please enter your information",
                    style: TextStyle(
                      color: Color(0xFFD18701),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              //creating a container to host the textfield
              Container(
                height: 334,
                width: 255,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEFF3),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                //it is time to stack our widgets
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        //let create a text
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF012742),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          child: MyTextfield(
                            controller: emailController,
                            hintText: "Enter Email-Address",
                            obscureText: false,
                            iconData: Icons.mail,
                          ),
                        ),
                      ],
                    ),

                    // add another field for password
                    const SizedBox(
                      height: 10,
                    ),

                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        //let create a text
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF012742),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          child: MyTextfield(
                            controller: passwordController,
                            hintText: "Enter password",
                            obscureText: true,
                            iconData: Icons.lock,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //let add our text
              MyButton(text: "Login", onTap: () {}),

              const SizedBox(
                height: 10,
              ),

              Center(
                child: Text(
                  "Login with",
                  style: TextStyle(
                    color: Color(0xFF013458),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //now let add our buttons
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyLogoButton(
                      onTap: () {},
                      imagePath: 'images/logoa.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MyLogoButton(
                      onTap: () {},
                      imagePath: 'images/facebook.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //now let place the last the last text
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Color(0xFF013458),
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(
                        color: Color(0xFFD48F11),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
