import 'package:flutter/material.dart';
import 'screen1.dart';

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
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context, "screen1.dart");
                        },
                        child: const Text("PRESS ME")),
                    TextButton(onPressed: () {}, child: const Text("PRESS ME")),
                    TextButton(onPressed: () {}, child: const Text("PRESS ME")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/pizza.jpg",
                      height: 200, // Adjust the height as needed
                      width: 360, // Adjust the width as needed
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Hi, I'm the pizza assistant. How can I help you?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 49, 48, 48),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 10, // Set the maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Define how overflow should be handled
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
