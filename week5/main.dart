import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.backpack;
    String image = 'images/saudiai.png';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third App'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 300,
                      child: Icon(
                        icon,
                        size: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: pressed,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(image),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Khaled',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void pressed() {
  print('Clicked !');
}
