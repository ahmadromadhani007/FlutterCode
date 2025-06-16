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
        appBar: AppBar(title: Text('Aplikasi HelloWorld')),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 50,
            child: Text("Selamat Datang di Dunia tifu mwhehhehe", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
        ),
      ),
    );
  }
}
