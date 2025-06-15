import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Selamat Datang Dunia tifu2"),),
        body: Center(child: Text("Selamat Datang di Dunia tifu genk")),
      ),
    );
  }
}