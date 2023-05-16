import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple random generator letter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> letters = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'R',
  'S',
  'T',
  'U',
  'W',
  'X',
  'Y',
  'Z',
];
String letter = 'X';
Random draw = Random();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 51, 12),
        centerTitle: true,
        toolbarHeight: 120,
        title: const Text(
          'Random Letters',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'You letter is ... :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 158, 51, 12),
            ),
            child: Center(
              child: Text(
                letter,
                style: const TextStyle(
                  fontSize: 300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                letter = letters[draw.nextInt(letters.length)];
              });
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 158, 51, 12),
              padding: const EdgeInsets.all(20),
            ),
            child: const Text(
              'DRAW',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
