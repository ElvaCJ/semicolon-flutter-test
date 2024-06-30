import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('실습 2 : 인생네컷'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            // sizedbox 사이사이에 사진을 넣어보세요! 사진은 인터넷에서 검색해서 쓰시면 됩니다~
            // 축 정렬도 신경써야겠죠?
            TextButton(
              onPressed: () => {},
              child: const Text('세미콜론 인생네컷'),
            ),
            Image.network(
              'https://src.hidoc.co.kr/image/lib/2024/2/2/1706870132971_0.jpg',
              width: 200,
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://src.hidoc.co.kr/image/lib/2024/2/2/1706870132971_0.jpg',
              width: 200,
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://src.hidoc.co.kr/image/lib/2024/2/2/1706870132971_0.jpg',
              width: 200,
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://src.hidoc.co.kr/image/lib/2024/2/2/1706870132971_0.jpg',
              width: 200,
            ),
          ]),
        ),
      ),
    );
  }
}
