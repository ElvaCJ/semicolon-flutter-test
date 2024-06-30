import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('실습 1'),
      ),
      body: Center(
        child: Row(
          // 주축 정렬 -> 중앙
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan[200],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink[100],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo[100],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // 가로 세로 80인 Container를 세 개 만들고 각기 color를 다르게 설정해줍니다
              // 주축 정렬 -> 자식들 사이의 여유 공간을 균등하게 분배
              children: <Widget>[
                //여기에 컨테이너 만들기~
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              // 가로 세로 50인 Container를 세 개 만들고 각기 color를 다르게 설정해줍니다
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // 주축 정렬 -> 자식들 사이의 여유 공간을 균등하게 분배하되, 양 끝의 여유 공간을 자식들 사이 여유 공간의 절반으로 설정
              children: <Widget>[
                //여기에 컨테이너 만들기~
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan[200],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink[100],
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo[100],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
