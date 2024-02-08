import 'package:flutter/material.dart';
import 'package:ui/pages/Home.dart';
import 'package:ui/pages/address.dart';
import 'package:ui/pages/another_splash.dart';
import 'package:ui/pages/home_page.dart';
import 'package:ui/pages/login_page.dart';
import 'package:ui/pages/sign_up.dart';
import 'package:ui/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Address(),
    );
  }
}