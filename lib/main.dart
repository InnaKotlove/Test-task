import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color initialColor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InkWell(
          onTap: () {
            setState(() {
              initialColor =
                  Color((math.Random().nextDouble() * 0xFFFFFF)
                      .toInt(),).withOpacity(1.0);
            });
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color((math.Random().nextDouble() * 0xFFFFFF)
                .toInt(),).withOpacity(1.0),
            alignment: Alignment.center,
            child: const Text(
              'Hey there',
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
