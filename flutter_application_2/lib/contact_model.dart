import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 연락처 클래스입니다:) 항상 틀이 있어야 그 틀 모양대로 데이터를 저장할 수 있겠죠?
class Contact {
  // 이름과 폰 번호 변수
  String name;
  String phone;

  // 직렬화
  Map<String, dynamic> toJson() {
    // Map이면 key : value 형태여야겠죠? Map 데이터를 어떻게 toJson 할까요??
    return {};
  }

  // 역직렬화
  // JSON 형태에서 다시 Map 형태로 바꿔줘야 합니다!

  Contact(this.name, this.phone);
}

class ContactModel extends ChangeNotifier {
  List<Contact> get contacts => _contacts;

  final List<Contact> _contacts = [];

  ContactModel() {
    initContact();
  }

  Future<void> initContact() async {
    // SharePreferences 로 store 로컬스토리지 인스턴스를 만들어줍니다.
    // 그리고 final로 json 변수를 선언하고 store에 저장된 "contacts"를 불러옵니다.
    final json;

    // 받아온 json이 null이 아닐 경우에만 처리를 해야겠죠? -> if문의 조건
    /*
    if() {
      1. jsonDecode 함수를 사용하여 JSON 문자열을 Dart의 리스트로 디코딩하고
      data 리스트의 각 요소를 Contact.fromJson 메서드를 사용하여 Contact 객체로 변환해줘야 합니다.
      2. 그리고 map 함수는 각 요소에 대해 변환 작업을 수행하며, .toList()를 호출하여 변환된 Contact 객체들을 리스트로 만들어야 해요!
      3. 마지막으로 ChangeNotifier! 
    }
    */
  }

  Future<void> updateContact() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    final String json =
        jsonEncode(_contacts.map((contact) => contact.toJson()).toList());
    await store.setString("contacts", json);
  }

  void addContact(String name, String phone) {
    _contacts.add(Contact(name, phone));
    updateContact();
    notifyListeners();
  }

  void editContact(int index, String name, String phone) {
    _contacts[index].name = name;
    _contacts[index].phone = phone;
    updateContact();
    notifyListeners();
  }

  void removeContact(int index) {
    _contacts.removeAt(index);
    updateContact();
    notifyListeners();
  }
}
