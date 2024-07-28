import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './add.dart';

// 연락처 모델 정의
class Contact {
  String name;
  String phone;

  Contact(this.name, this.phone);
}

class ContactModel extends ChangeNotifier {
  final List<Contact> _contacts = [
    Contact('John Doe', '123-456-7890'),
    Contact('Jane Doe', '987-654-3210'),
  ];

  List<Contact> get contacts => _contacts;

  //여기에 addContact 함수를 호출해볼까요?
  void addContact() {}

  //여기서 removeContact 함수를 만들어봅시다
  void removeContact() {}
}

// 연락처 목록 페이지
class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contactModel = Provider.of<ContactModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contactModel.contacts.length,
        itemBuilder: (context, index) {
          final contact = contactModel.contacts[index];
          return Dismissible(
            key: Key(contact.phone),
            onDismissed: (direction) {
              // 옆으로 스와이프하면 삭제되는 removeContact가 작동하려면?
            },
            child: GestureDetector(
              onLongPress: () {},
              child: ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.phone),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ContactList(),
      routes: {
        '/add': (context) => const AddContact(),
      },
    );
  }
}
