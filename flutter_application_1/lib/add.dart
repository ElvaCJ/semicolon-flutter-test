import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ex3_0728.dart';

// 연락처 추가 페이지
class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              //textfield를 두 개 입력 받아야겠죠? (name, phone)
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // save 버튼이 눌리면 name과 phone에 입력받은 데이터가 저장되어야겠죠?
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
