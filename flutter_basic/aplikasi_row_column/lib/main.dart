import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Row dan Column',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // warna AppBar biru
          foregroundColor: Colors.white, // warna teks/icon jadi putih
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Row dan Column")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: <Widget>[
                Text("Row 4"),
                Text("Row 5"),
                Text("Row 6"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}