import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorModel2 extends ChangeNotifier {
  Color buttonColor = Colors.white;
  Color textColor = Colors.black;
  void changeColor() {
    Color temp = buttonColor;
    buttonColor = textColor;
    textColor = temp;
    notifyListeners();
  }
}

class InteractiveButton2 extends StatelessWidget {
  const InteractiveButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: context.watch<ColorModel2>().buttonColor,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '다크 모드',
                  style:
                      TextStyle(color: context.watch<ColorModel2>().textColor),
                ),
                Switch(
                    value: context.watch<ColorModel2>().buttonColor !=
                        Colors.white,
                    onChanged: (bool? value) {
                      context.read<ColorModel2>().changeColor();
                    }),
              ],
            ),
          )),
    );
  }
}
