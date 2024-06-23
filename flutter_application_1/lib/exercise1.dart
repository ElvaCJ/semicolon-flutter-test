import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('실습 1'),
      ),
      body: const Center(
        child: Column(
          // 주축 정렬 -> 중앙
          children: <Widget>[
            Row(
              // 가로 세로 80인 Container를 세 개 만들고 각기 color를 다르게 설정해줍니다
              // 주축 정렬 -> 자식들 사이의 여유 공간을 균등하게 분배
              children: <Widget>[
                //여기에 컨테이너 만들기~
              ],
            ),
            SizedBox(height: 20),
            Row(
              // 가로 세로 50인 Container를 세 개 만들고 각기 color를 다르게 설정해줍니다

              // 주축 정렬 -> 자식들 사이의 여유 공간을 균등하게 분배하되, 양 끝의 여유 공간을 자식들 사이 여유 공간의 절반으로 설정
              children: <Widget>[
                //여기에 컨테이너 만들기~
              ],
            ),
          ],
        ),
      ),
    );
  }
}
