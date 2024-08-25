import 'package:flutter/cupertino.dart';
import 'package:gsheets/gsheets.dart';

import '../views/constants.dart';

class Voca {
  String word;
  String meaning;

  Voca(this.word, this.meaning);
}

class VocaModel with ChangeNotifier {
  List<Voca> vocas = [];

  VocaModel() {
    initModel();
  }

  initModel() async {
    final gsheets = GSheets(gsheets_credentials);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(spreadsheetId);

    // get worksheet by its title
    var sheet = ss.worksheetByTitle('sheet1');
    if (sheet != null) {
      final data = await sheet.values.allRows(fromRow: 2);
      for (List<String> row in data) {
        vocas.add(Voca(row[0], row[1]));
      }
      notifyListeners();
    }
  }
}
