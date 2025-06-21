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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Text Style',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Latihan Text Style")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "ini adalah Text",
                style: TextStyle(
                  fontFamily: "CrashlandingBb",
                  fontSize: 30,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.red,
                  decorationThickness: 2,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "ini adalah Text miring",
                style: TextStyle(
                  fontFamily: "CrashlandingBbItalic",
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}