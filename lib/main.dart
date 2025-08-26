import 'package:flutter/material.dart';
import 'package:flutter_application_nv/2207flutter/currency_exchange.dart';
import 'package:flutter_application_nv/2207flutter/login_screen.dart';
import 'package:flutter_application_nv/2207flutter/registration_page.dart';
//import 'package:flutter_application_nv/1507flutter/basiccompo.dart';
//import 'package:flutter_application_nv/1507flutter/columnexample.dart';
//import 'package:flutter_application_nv/2207flutter/calculator_layout.dart';
import 'package:flutter_application_nv/2207flutter/stopwatch.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: RegistrationPage()),
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
    );
  }
}
