import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import './ex1_0721.dart';
import './ex2_0721.dart';

void main() {
  runApp(
    MultiProvider(
      providers: const [
        // 변경된 내용을 반영할 수 있도록 각 위젯의 Provider를 등록해야겠죠?
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
        '/exam1': (context) => SelfIntroduce(),
        '/exam2': (context) => const TodoList(),
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
  bool _isButton1Enabled = false;
  bool _isButton2Enabled = false;

  void _checkInput() {
    setState(() {
      _isButton1Enabled = _controllerText.text == "semicolon";
      _isButton2Enabled = _controllerText.text == "semicolon";
    });
  }

  @override
  void initState() {
    super.initState();
    _controllerText.addListener(_checkInput);
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
            TextField(
              controller: _controllerText,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.arrow_forward_outlined),
                hintText: 'semicolon 이라고 입력해보세요',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _isButton1Enabled
                  ? () {
                      Navigator.pushNamed(context, '/exam1');
                    }
                  : null,
              child: const Text('Exam1 이동'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _isButton2Enabled
                  ? () {
                      Navigator.pushNamed(context, '/exam2');
                    }
                  : null,
              child: const Text('Exam2 이동'),
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
