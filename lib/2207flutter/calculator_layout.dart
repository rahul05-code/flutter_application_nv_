import 'package:flutter/material.dart';

class CalculatorLayout extends StatelessWidget {
  const CalculatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox.expand(
            child: Text("Calculator Layout", 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: null, child: Text("7")),
              ElevatedButton(onPressed: null, child: Text("8")),
              ElevatedButton(onPressed: null, child: Text("9")),
              ElevatedButton(onPressed: null, child: Text("/")),
              ElevatedButton(onPressed: null, child: Text("4")),
              ElevatedButton(onPressed: null, child: Text("5")),
              ElevatedButton(onPressed: null, child: Text("6")),
            ],
          ),
        ],
      ),
    );
  }
}