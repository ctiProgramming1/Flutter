import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IconData icon = Icons.dangerous;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text(
            'تطبيق رحلاتي',
            style: TextStyle(fontSize: 25, fontFamily: 'Cairo'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      icon = Icons.ac_unit;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        icon,
                        size: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 50,
                    child: Icon(
                      Icons.directions_boat_sharp,
                      size: 60,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 50,
                    child: Icon(
                      Icons.airplanemode_on_outlined,
                      size: 60,
                    ),
                  ),
                ],
              ),
              Text(
                ' اختر رحلتك',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 40,
                  ),
                  title: Text('0555555555555'),
                  subtitle: Text('اتصل الآن'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void pp() {
  print('pp');
}
