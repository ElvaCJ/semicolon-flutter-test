import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ex1_0728.dart';
import './ex2_0728.dart';
import './ex3_0728.dart';
import './add.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ColorModel1()),
        ChangeNotifierProvider(create: (context) => ColorModel2()),
        ChangeNotifierProvider(create: (context) => ContactModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/exam1': (context) => const InteractiveButton1(),
        '/exam2': (context) => const InteractiveButton2(),
        '/exam3': (context) => const ContactList(),
        '/add': (context) => const AddContact(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controllerText = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controllerText.dispose();
    super.dispose();
  }

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
            // TextField(
            //   controller: _controllerText,
            //   decoration: const InputDecoration(
            //     prefixIcon: Icon(Icons.arrow_forward_outlined),
            //     hintText: 'semicolon 이라고 입력해보세요',
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //       borderSide: BorderSide(width: 1, color: Colors.grey),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //       borderSide: BorderSide(width: 2, color: Colors.blue),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam1');
              },
              child: const Text('Exam1 이동'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam2');
              },
              child: const Text('Exam2 이동'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam3');
              },
              child: const Text('Exam3 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
