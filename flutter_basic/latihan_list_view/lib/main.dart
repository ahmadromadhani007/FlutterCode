import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++) widgets.add(Text("Data ke-" + i.toString(), style: TextStyle(fontSize: 30),));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Latihan list and views')),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(child: Text("Tambah Data"), onPressed: null,),
                ElevatedButton(child: Text("Hapus Data"), onPressed: null,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ]
          ),
      ),
    );
  }
}
