import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '카드 뒤집기 패키지 익히기',
      theme: ThemeData.dark(),
      home: const FlipCardPage(),
    );
  }
}

class FlipCardPage extends StatelessWidget {
  const FlipCardPage({super.key});

  // 배경색을 설정하는 함수
  _renderBg() {
    return Container(
      decoration: const BoxDecoration(
          // 문제 1: 배경색을 설정하세요. (예: Colors.blue)
          ),
    );
  }

  // 앱바를 렌더링하는 함수
  _renderAppBar(context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: AppBar(
        elevation: 0.0,
        // 문제 2: 앱바의 배경색을 설정하세요. (예: Colors.transparent)
        //
        title: const Text('________'), // 문제 3: 앱바의 제목을 설정하세요. (예: FlipCard 연습)
      ),
    );
  }

  // FlipCard를 렌더링하는 함수
  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
          left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: const Color(0x00000000),
      child: FlipCard(
        // 문제 4: 카드를 뒤집는 방향을 설정하세요. (예: FlipDirection.HORIZONTAL)
        side: CardSide.FRONT,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          decoration: const BoxDecoration(
            // 문제 5: 카드 앞면의 배경색을 설정하세요. (예: Colors.green)
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '_________', // 문제 6: 카드 앞면에 표시될 텍스트를 설정하세요. (예: Front Side)
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                '_________', // 문제 7: 카드 앞면에 추가 설명 텍스트를 설정하세요. (예: 클릭해서 뒤집기)
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        back: Container(
          decoration: const BoxDecoration(
            // 문제 8: 카드 뒷면의 배경색을 설정하세요. (예: Colors.red)
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '_________', // 문제 9: 카드 뒷면에 표시될 텍스트를 설정하세요. (예: Back Side)
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                '_________', // 문제 10: 카드 뒷면에 추가 설명 텍스트를 설정하세요. (예: 클릭해서 다시 뒤집기)
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlipCard'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // 문제 12: 배경을 렌더링하는 함수가 호출되고 있는지 확인하세요.
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _renderAppBar(context),
              Expanded(
                flex: 4,
                child: _renderContent(context),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
