import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color bgColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                bgColor = Colors.blue;
              });
            },
            child: Text('Change Color'),
          ),
        ),
      ),
    );
  }
}
