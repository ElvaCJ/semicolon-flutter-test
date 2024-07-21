import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoModel extends ChangeNotifier {
  final List<String> todos = [];
  // 문제1) 여기에 할 일 리스트를 만들고, "추가"하고 "삭제"하는 function을 만들어봅시다.
}

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO 리스트'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: todoController,
              decoration: InputDecoration(
                labelText: '할 일',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    //여기에 "추가" function을 추가해봅시다
                  },
                ),
              ),
            ),
            Expanded(
              child: Consumer<TodoModel>(
                builder: (context, todoModel, child) {
                  return ListView.builder(
                    itemCount: todoModel.todos.length,
                    itemBuilder: (context, index) {
                      return const ListTile(
                          // 여기엔 "삭제" function이 실행되는 icon과, 할 일 목록(리스트 데이터)를 보여주는 위젯이 있어야겠죠?
                          );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
