import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String light = 'GREEN';
  String instruction = 'GO';
  Color? instructionColor = Colors.green[500];

  @override
  void initState() {
    light = 'GREEN';
    instruction = 'GO';
    instructionColor = Colors.green[500];
    super.initState();
  }

  void changeLight() {
    setState(() {
      if (light == 'GREEN') {
        light = 'YELLOW';
        instruction = 'SLOW';
        instructionColor = Colors.orange[500];
      } else if (light == 'YELLOW') {
        light = 'RED';
        instruction = 'STOP';
        instructionColor = Colors.red[500];
      } else {
        light = 'GREEN';
        instruction = 'GO';
        instructionColor = Colors.green[500];
      }
    });
  }

  int turnOnLight(String lightactive) {
    int num = 100;
    if (light == lightactive) {
      num = 500;
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Traffic Light'),
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                instruction,
                style: TextStyle(
                  fontSize: 32, 
                  color: instructionColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.green[turnOnLight('GREEN')],
                  ),
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.orange[turnOnLight('YELLOW')],
                  ),
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.red[turnOnLight('RED')],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: changeLight,
                child: Text(
                  'Next', 
                  style: TextStyle(fontSize: 20,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
