import 'package:flutter/material.dart';

class ChoiceCard extends StatelessWidget {
  // const ChoiceCard({
  //   Key? key,
  // }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  const ChoiceCard(
      {required this.title, required this.icon, required this.color});

  final String title;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          print(color.toString());
        },
        child: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  icon,
                  size: 50,
                )
              ],
            ),
          ),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: color),
        ),
      ),
    );
  }
}
