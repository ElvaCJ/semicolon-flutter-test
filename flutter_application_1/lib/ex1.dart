import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            // Header
            Container(
              color: Colors.blue,
              height: 50,
              width: double.infinity,
              child: const Center(
                  child: Text('Header',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            // Content with Sidebars
            const Expanded(
              child: Row(
                  // 🤩여기에 구성해보세요~
                  ),
            ),
            // Footer
            Container(
              color: Colors.grey,
              height: 50,
              width: double.infinity,
              child: const Center(
                  child: Text('Footer',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
