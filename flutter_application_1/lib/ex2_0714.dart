import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCart with ChangeNotifier {
  //값
  List<String> items = [];

  //값을 수정하는 메서드
  // 메서드 두 개: addItem, removeItem 만들어보세요
}

class ShoppingMall extends StatelessWidget {
  const ShoppingMall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (BuildContext context) => Home(),
        "/deal": (BuildContext context) => const Deal(),
      },
      initialRoute: "/home",
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> items = [
    "아이폰 15",
    "아이폰 15 프로",
    "아이패드 에어",
    "아이패드 프로",
    "애플워치",
    "맥북 에어",
    "맥북 프로",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          onPressed: () => Navigator.of(context).pushNamed("/deal"),
        ),
        title: const Text('애플몰'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    //문제) 버튼의 onPressed 콜백에서 값을 추가하기 위해 context.______<ShoppingCart>().addItem(item)를 호출합니다.
                  },
                ),
              ),
            );
          }),
    );
  }
}

class Deal extends StatelessWidget {
  const Deal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () =>
              Navigator.of(context).popUntil((route) => route.isFirst),
        ),
        title: const Text('장바구니'),
      ),
      body: ListView.builder(
          itemCount: context.watch<ShoppingCart>().items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(context.watch<ShoppingCart>().items[index]),
                trailing: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      //문제) 버튼의 onPressed 콜백에서 값을 제거하기 위해 context.______<ShoppingCart>().removeItem(item)를 호출합니다.
                    }),
              ),
            );
          }),
    );
  }
}
