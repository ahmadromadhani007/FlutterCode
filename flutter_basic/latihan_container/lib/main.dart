import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Training',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Container Training")),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            // color: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.amberAccent, Colors.lightBlueAccent],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
