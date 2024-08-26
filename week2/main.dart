import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'تطبيق الأسماء',
            style: TextStyle(fontFamily: 'Cairo', fontSize: 25),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 100,
            ),
            Text(
              'د. خالد اليوسفي',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),
            Container(
              width: double.infinity,
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  onLongPress: printed,
                  leading: Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.blue.shade800,
                  ),
                  title: Text(
                    ' kalyousefi@tvtc.gov.sa',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo'),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 300,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.blue.shade800,
                  ),
                  Text(
                    ' kalyousefi@tvtc.gov.sa',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void printed() {
  debugPrint('Clicked');
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Page2'),
        ),
      ),
    );
  }
}


