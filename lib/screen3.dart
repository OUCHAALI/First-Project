import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WOOW PIZZA"),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.facebook_rounded,
                  size: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("PRESS ME")),
              TextButton(onPressed: () {}, child: const Text("PRESS ME")),
              TextButton(onPressed: () {}, child: const Text("PRESS ME")),
            ],
          ),
        ),
      ),
    );
  }
}
