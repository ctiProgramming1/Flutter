import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50;
    IconData i = Icons.cabin;

    String text = 'Flutter App';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third App'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        onPressed: pressed,
                        child: Image.asset('images/saudiai.png')),
                  )),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 200,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        i,
                        size: size,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: FittedBox(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 400),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'This is some text',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void pressed() {
  print('The image has been pressed');
}
