import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple random letters App',
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
        backgroundColor: Colors.brown,
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
          const SizedBox(height: 20),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown,
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
            height: 90,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                letter = letters[draw.nextInt(letters.length)];
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown,
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
