import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(children: [
            Text(
              'Traffic Light',
              style: TextStyle(
                fontSize: 32,
                color: Colors.teal[500],
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 100,
                  color: Colors.green[500],
                ),
                Icon(
                  Icons.circle,
                  size: 100,
                  color: Colors.yellow[500],
                ),
                Icon(
                  Icons.circle,
                  size: 100,
                  color: Colors.red[500],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
