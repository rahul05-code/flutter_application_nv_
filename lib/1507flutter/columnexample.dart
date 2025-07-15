import 'package:flutter/material.dart';

class Columnexample extends StatelessWidget {
  const Columnexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text1'),
          SizedBox(height: 20),
          Text('Text2'),
          SizedBox(height: 20),
          Text('Text3'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
