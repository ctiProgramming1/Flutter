import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameA',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ball Game',
            style: TextStyle(color: const Color.fromARGB(255, 152, 43, 10)),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Text(
            'Hello Gamer',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
