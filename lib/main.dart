import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        toolbarHeight: 120,
        title: const Text(
          'Random Letters',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'A',
              style: TextStyle(
                fontSize: 320,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'DRAW',
            ),
          )
        ],
      ),
    );
  }
}
