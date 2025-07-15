import 'package:flutter/material.dart';
import 'package:flutter_application_nv/1507flutter/basiccompo.dart';
import 'package:flutter_application_nv/1507flutter/columnexample.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Columnexample(),
      ),
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
    );
  }
}
