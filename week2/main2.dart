import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "تطبيق الكلية",
            style: TextStyle(fontFamily: 'Cairo', color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.network(
                    'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'images/saudiai.png',
                scale: 2,
              ),
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/saudiai.png'),
            )
          ],
        ),
      ),
    );
  }
}
