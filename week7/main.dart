import 'package:flutter/material.dart';

import 'choice_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fifth App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChoiceCard(title: 'Blue', icon: Icons.alarm, color: Colors.blue),
              SizedBox(width: 10),
              ChoiceCard(
                  title: 'Red', icon: Icons.read_more, color: Colors.red),
              SizedBox(width: 10),
              ChoiceCard(
                  title: 'Green', icon: Icons.ballot, color: Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
