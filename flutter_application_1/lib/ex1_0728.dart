import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorModel1 extends ChangeNotifier {
// 컬러 모델을 만들어보세요
}

class InteractiveButton1 extends StatelessWidget {
  const InteractiveButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          // 컬러모델 추가
          child: InkWell(
            onTap: () {
              // 컬러모델 추가
            },
            child: const SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  'Tap me',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
