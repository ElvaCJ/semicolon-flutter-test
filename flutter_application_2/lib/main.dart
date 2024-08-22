import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contact_model.dart';
import 'contact_list.dart';
import 'add_contact.dart';
import 'edit_contact.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactModel()),
        ChangeNotifierProvider(create: (context) => ColorModel()),
      ],
      child: Consumer<ColorModel>(
        builder: (context, colorModel, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: '연락처',
            theme: ThemeData(
              brightness:
                  colorModel.isDark ? Brightness.dark : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const ContactList(),
              '/add': (context) => AddContact(),
              '/edit': (context) => EditContact(),
            },
          );
        },
      ),
    );
  }
}

// 문제1. 다크/라이트 모드 토글
class ColorModel extends ChangeNotifier {
  // 다크모드 값 초기화 boolean 변수
  bool isDark = false;

  ColorModel() {
    initColor();
  }

  Future<void> initColor() async {
    // SharedPreferences 패키지를 통해 인스턴스(이름은 store)를 만들고 로컬스토리지 객체에 정보를 저장해봅시다!
    // 그런 다음 store에 저장된 boolean 값을 get해와서 값을 판단하고 다시 set해주는 로직을 짜봅시다.
  }

  Future<void> toggleTheme() async {
    // 여기서도 SharedPreferences 인스턴스(이름은 동일하게 store)를 만들고 로컬스토리지 객체에 정보를 저장해봅시다!
    // 그런 다음 isDark의 값을 반전시켜 테마 모드를 전환하는 코드를 짜고 store에 setBool로 값을 업데이트해줍니다.
    // notifyListeners도 잊으면 안되겠죠? :)
  }
}
