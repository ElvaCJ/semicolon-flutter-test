import 'package:flutter/material.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: Center(
      child: SwipeCardPage(),
    )),
    title: '카드 스와이프 패키지 익히기',
  ));
}

class SwipeCardPage extends StatelessWidget {
  const SwipeCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: getCardDeck(),
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 200,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
      disableDragging: false,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        deck,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 문제 1: 아래 빈칸을 채워 IconButton을 완성하세요.
            IconButton(
                icon: const Icon(), // 문제 1-1: 아이콘을 설정하세요. (예: Icons.clear)
                // 문제 1-2: 아이콘 크기를 설정하세요. (예: 30)
                // 문제 1-3: 아이콘 색상을 설정하세요. (예: Colors.red)
                onPressed:
                    () {} // 문제 1-4: 버튼을 누르면 실행할 동작을 삼항연산자로 정의하세요. (예: deck.swipeLeft(),)
                ),
            const SizedBox(width: 40),
            // 문제 2: 아래 빈칸을 채워 IconButton을 완성하세요.
            IconButton(
                icon: const Icon(), // 문제 2-1: 아이콘을 설정하세요. (예: Icons.check)
                // 문제 2-2: 아이콘 크기를 설정하세요. (예: 30)
                // 문제 2-3: 아이콘 색상을 설정하세요. (예: Colors.green)
                onPressed:
                    () {} // 문제 2-4: 버튼을 누르면 실행할 동작을 삼항연산자로 정의하세요. (예: deck.swipeRight())
                ),
          ],
        ),
      ],
    );
  }

  List<Card> getCardDeck() {
    List<Card> cardDeck = [];
    for (int i = 0; i < 500; ++i) {
      cardDeck.add(
        Card(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            child: const SizedBox(height: 300, width: 200)),
      );
    }
    return cardDeck;
  }
}
