import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorFnc extends ChangeNotifier {
  // 입력한 숫자(firstNum, secondNum), 입력하 연산자(operator), 사용자 화면에 보여줄 값(display)
  double? firstNum;
  String? operator;
  double? secondNum;
  String display = '';

  void calculateResult() {
    // Q1. 연산자들(x / + -)들에 맞게 입력한 숫자를 계산해주는 if-else if 문을 만들어보세요.
    // 여기에 작성

    // Q2. 입력한 firstNum이 담겼을 때 화면에 보일 수 있도록 (단, string 형태로 변환되어 보여져야 함) display 변수에 할당해보세요.
    // 여기에 작성
    secondNum = null;
    notifyListeners();
  }

  void buttonClick(dynamic value) {
    if (value == 'C') {
      // Q3. 초기화 버튼이 눌렸을 경우 모든 변수에 할당된 값들도 초기화 시켜줘야겠죠?
      // 여기에 작성
    } else if (value == 'x' || value == '/' || value == 'ㅡ' || value == '+') {
      if (firstNum == null) {
        firstNum = double.tryParse(display);
        operator = value;
        display = '';
      } else if (secondNum == null && display.isNotEmpty) {
        secondNum = double.tryParse(display);
        calculateResult();
        operator = value;
        display = '';
      }
    } else if (value == '=') {
      // Q4. 결과를 사용자 화면에 출력하기 전 어떤 조건들을(총 3개의 조건) 만족해야할까요? 그리고 계산이 끝난 후 operator 변수는 그대로 둬도 될까요?
      // 여기에 작성
    } else {
      display += value.toString();
    }
    notifyListeners();
  }
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorFnc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('이것저것 기능이 있는 계산기'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // Q5. 배경색은 grey, padding은 상하 12픽셀 좌우 8픽셀, 너비는 300픽셀
              // 여기에 작성
              child: Row(
                // Q6. Row 중앙정렬
                // 여기에 작성
                children: [
                  const Text(
                    '결과',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    calculator.display,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      // Q7. 노션에 올라온 완성 화면처럼 숫자 버튼을 정렬하려면 어떻게 해야할까요? (힌트: 각 Row마다 TextButton 생성해서 정렬하기. TextButton의 onPressed 속성에는 어떤 함수가 호출되어야할까요?)
                      // 여기에 작성
                    ],
                  ),
                  Column(
                    children: [
                      // Q9. 아래의 '=' TextButton을 참고해서 나머지 연산자 버튼도 만들어보세요!
                      // 여기에 작성
                      TextButton(
                        onPressed: () {
                          // Q10. 어떤 함수가 호출되어야 할까요?
                          // 여기에 작성
                        },
                        child: const Text("="),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
