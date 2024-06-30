import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  const Ex2({super.key});

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
                  child: Text('유튜브 헤더',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            // Content with Sidebars
            // 🤩여기에 구성해보세요~
            // Footer
          ],
        ),
      ),
    );
  }
}
