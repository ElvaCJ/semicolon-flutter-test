import 'package:flutter/material.dart';
import 'exercise1.dart';
import 'exercise2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/exercise1': (context) => const Exercise1(),
        '/exercise2': (context) => const Exercise2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Application 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercise1');
              },
              child: const Text('실습 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercise2');
              },
              child: const Text('실습 2'),
            ),
          ],
        ),
      ),
    );
  }
}
