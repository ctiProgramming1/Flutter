import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IconData a = Icons.backpack;

  double size = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(
                      a,
                      size: 60,
                    ),
                    radius: size,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a = Icons.warning;
                      size = 30.0;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.access_alarm,
                      size: 75,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(Icons.dangerous),
                    radius: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

double get_size() {
  var rng = Random();
  double new_size = rng.nextInt(50) / 1;
  print(new_size);

  return new_size;
}
