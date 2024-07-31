import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,         
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: const Text("MyApp Bar"),
          ),
          body: const Text("MyBody"),
          bottomNavigationBar: BottomNavigationBar(
            items: const[
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home)
                ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.settings)
                )
            ],
          ),
        ),
    );
  }
}