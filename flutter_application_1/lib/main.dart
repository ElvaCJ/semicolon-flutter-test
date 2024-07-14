import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ex1_0714.dart';
import './ex2_0714.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return Count();
    },
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/exam1': (context) => const Ex1(),
        '/exam2': (context) => const ShoppingMall(),
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
                Navigator.pushNamed(context, '/exam1');
              },
              child: const Text('실습 1'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam2');
              },
              child: const Text('실습 2'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
