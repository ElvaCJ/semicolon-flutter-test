import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserInfo with ChangeNotifier {
  String imgSrc =
      "https://t4.ftcdn.net/jpg/02/15/84/43/360_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg"; // Default image
  String name = "";
  String intro = "";

  changeImage(String newImgSrc) {
    imgSrc = newImgSrc;
    notifyListeners();
  }

  changeName(String newName) {
    name = newName;
    notifyListeners();
  }

  changeIntro(String newIntro) {
    intro = newIntro;
    notifyListeners();
  }
}

class SelfIntroduce extends StatelessWidget {
  SelfIntroduce({super.key});
  final TextEditingController _controllerImage = TextEditingController();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerIntro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile 설정하기'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 240,
              color: Colors.blue[200],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(context.watch<UserInfo>().imgSrc),
                  Text(
                    context.watch<UserInfo>().name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(context.watch<UserInfo>().intro),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text(
                      '문제 1) 여기에 사용자로부터 정보를 입력받는 TextField를 3개(이미지링크, 이름, 자기소개) 생성하고 사용자들이 무엇을 입력해야하는지 힌트 글귀를 추가해보세요.'),
                  const Text(
                      '문제 2) TextField가 눌렸을 때는 blue[200], 눌리지 않았을 때는 grey로 color decoration을 줘보세요.'),
                  const Text(
                      '문제 3) 사용자가 입력을 하고 Save 버튼을 눌렀을 때 해당 변경 내용이 잘 저장되도록 만들어진 Controller를 각 TextField에 등록하는 코드를 짜보세요.'),
                  const SizedBox(height: 10),
                  TextButton.icon(
                    onPressed: () {
                      context
                          .read<UserInfo>()
                          .changeImage(_controllerImage.text);
                      context.read<UserInfo>().changeName(_controllerName.text);
                      context
                          .read<UserInfo>()
                          .changeIntro(_controllerIntro.text);

                      //문제3) 여기에 컨트롤러를 추가해야 합니다.
                    },
                    label: const Text('Save'),
                    icon: const Icon(Icons.save_alt_rounded),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
