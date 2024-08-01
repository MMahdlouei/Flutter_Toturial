import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int buttName = 0;
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: const Center(
            child: Text("MyApp Bar"),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.yellow,
              backgroundColor: Colors.cyan, // foreground
            ),
            onPressed: () {
              setState(() {
                buttName++;
              });

              print(buttName.toString());
            },
            child: Text(buttName.toString()),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home2",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
          selectedItemColor: Colors.blueAccent,
          currentIndex: currIndex,
          onTap: (int index) {
            setState(() {
              currIndex = index;
            });
          },
        ),
      ),
    );
  }
}
