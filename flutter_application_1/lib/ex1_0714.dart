import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 빈칸을 채우세요:
// 1. 상태 관리를 위한 ChangeNotifier 클래스를 정의합니다.
class Count with ChangeNotifier {
//   int count = 0;
//   void increase() {
//     count++;
//     _______();
//   }
//   void decrease() {
//     count--;
//     _______();
//   }
}

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up and Down'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 문제 2~3
            // 2. Text 위젯에서 상태 값을 가져오기 위해 context.______<Count>().count를 사용합니다.
            // 3. 버튼의 onPressed 콜백에서 값을 증가시키기 위해 context.______<Count>().increase()를 호출합니다.
            const Text(''),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text('Count Up')),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text('Count Down')),
          ],
        ),
      ),
    );
  }
}
