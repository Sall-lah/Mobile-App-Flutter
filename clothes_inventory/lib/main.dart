import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clothes Inventory', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0))),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Text('Hello World', 
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1.5, fontFamily: 'Montserrat'),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          onPressed: () {},
          child: Text("Click", style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
    );
  }
}
