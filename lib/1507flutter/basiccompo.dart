import 'package:flutter/material.dart';
import 'package:flutter_application_nv/1507flutter/textstyleexam.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.amber,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Hello flutter!", style: CustomTextStyle.Style1),
            ),
          ),
        ),
      ),
    );
  }
}
