import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class ToggleCheckboxExample extends StatefulWidget {
  @override
  _ToggleCheckboxExampleState createState() => _ToggleCheckboxExampleState();
}

class _ToggleCheckboxExampleState extends State<ToggleCheckboxExample> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Checkbox Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Card'),
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mohammed Ali'),
            subtitle: Text('STC'),
            trailing: Checkbox(
                value: checkValue,
                onChanged: (value) {
                  setState(() {
                    checkValue = value!;
                  });
                }),
            onTap: () {
              setState(() {
                checkValue = !checkValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Ali'), leading: Icon(Icons.person)),
          Divider(),
          ListTile(title: Text('Mohammed'), leading: Icon(Icons.person)),
          Divider(),
          ListTile(title: Text('Fahad'), leading: Icon(Icons.person)),
          Divider(),
        ],
      ),
    );
  }
}

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.all(55),
          children: [
            Text('Ali'),
            Text('Mohammed'),
            Text('Fahad'),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
          itemCount: 10, // or null for infinite scroll
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }),
    );
  }
}

class MyList2 extends StatelessWidget {
  const MyList2({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Ali', 'Ahmed', 'Fahad', 'Saad'];
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
          itemCount: names.length, // or null for infinite scroll
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          }),
    );
  }
}

class List3 extends StatelessWidget {
  const List3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Ali', 'Ahmed', 'Fahad', 'Saad'];
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 2,
            height: 66,
            indent: 7,
            endIndent: 99,
          );
        },
      ),
    );
  }
}
