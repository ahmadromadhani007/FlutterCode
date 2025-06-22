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
  int counter = 1;
  // _MyAppState() {
  //   for (int i = 0; i < 15; i++) widgets.add(Text("Data ke-" + i.toString(), style: TextStyle(fontSize: 30),));
  // }

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
                ElevatedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(
                        Text(
                          "Data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 30),
                        ),
                      );
                      counter++;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
