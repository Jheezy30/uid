import 'package:flutter/material.dart';
import 'package:ui/components/my_button.dart';
import 'package:ui/components/my_logo_button.dart';
import 'package:ui/components/my_textfield.dart';

class SignUp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController pwcController = TextEditingController();
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 80),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),


        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //the sign up text
                Column(
                  children: [
                    Center(
                      child: Text(
                        "Sign Up",
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
                  height: 400,
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
                            height: 10,
                          ),
                          //let create a text
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF012742),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
          
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, right: 15, top: 5),
                            child: MyTextfield(
                              controller: nameController,
                              hintText: "Enter full name",
                              obscureText: false,
                              iconData: Icons.person,
                            ),
                          ),
                        ],
                      ),
          
                      // add another field for email
                      const SizedBox(
                        height: 5,
                      ),
          
                      Column(
                        children: [
                          const SizedBox(
                            height: 5,
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
                            padding:
                                const EdgeInsets.only(left: 15, right: 15, top: 5),
                            child: MyTextfield(
                              controller: emailController,
                              hintText: "Enter Email-Address",
                              obscureText: false,
                              iconData: Icons.mail,
                            ),
                          ),
                        ],
                      ),
          
                      //the password field
          
                      Column(
                        children: [
                          const SizedBox(
                            height: 5,
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
                            padding:
                                const EdgeInsets.only(left: 15, right: 15, top: 5),
                            child: MyTextfield(
                              controller: passwordController,
                              hintText: "Enter Password",
                              obscureText: true,
                              iconData: Icons.lock,
                            ),
                          ),
                        ],
                      ),
          
                      // the reenter password field
          
                      Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          //let create a text
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Re-enter password",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF012742),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
          
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, right: 15, top: 5),
                            child: MyTextfield(
                              controller: pwcController,
                              hintText: "Re-enter password",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    RichText(
                      text: TextSpan(
                        text: "I agree to  ",
                        style: TextStyle(
                          color: Color(0xFF013458),
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: "Terms",
                            style: TextStyle(
                              color: Color(0xFFD48F11),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          
                          TextSpan(
                            text: " and",
                            style: TextStyle(
                              color: Color(0xFF013458),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: " Condition",
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
          
                const SizedBox(
                  height: 10,
                ),
          
                //let add our text
                MyButton(text: "Sign Up", onTap: () {}),
          
                const SizedBox(
                  height: 10,
                ),
          
                Center(
                  child: Text(
                    "Sign up with",
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
                    text: "Already have an account? ",
                    style: TextStyle(
                      color: Color(0xFF013458),
                      fontWeight: FontWeight.normal,
                    ),
                    children: [
                      TextSpan(
                        text: "Log In",
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
          ),
        ],
      ),
    );
  }
}
