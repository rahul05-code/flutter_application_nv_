import 'dart:async';

import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  int seconds = 0;
  late Timer timer;
  String _secondsTotext() => seconds <= 1 ? "Second" : "Seconds";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stopwatch")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$seconds ${_secondsTotext()}",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            controlpanel(),
            controlpanel1(),
          ],
        ),
      ),
    );
  }

  Row controlpanel() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          ),
          child: Text("Start"),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          ),
          child: Text("Stop"),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          ),
          child: Text("Lap"),
        ),
      ],
    );
  }

  Row controlpanel1() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.yellow),
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          ),
          child: Text("Pause"),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.pink),
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          ),
          child: Text("Clear"),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), _OnTick);
  }

  void _OnTick(Timer timer) {
    setState(() {
      seconds++;
    });
  }

  void dispose() {
    super.dispose();
  }
}
