import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "لعبة الاختيارات",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 50,
              color: Colors.grey,
              child: Center(
                child: Text(
                  "الاختيارات",
                  style: TextStyle(
                      fontSize: 40,
                      color: const Color.fromARGB(255, 5, 63, 110)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(
                      Icons.fire_truck,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.airplanemode_off,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.blue,
                  child: Icon(
                    Icons.car_crash,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
