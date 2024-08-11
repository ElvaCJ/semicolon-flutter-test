import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoModel(),
      child: const TodoList(),
    );
  }
}

class TodoModel with ChangeNotifier {
  List<Map<String, String>> todos = [];
  final options = BaseOptions(
      baseUrl: "https://66a8b1a2e40d3aa6ff58ffc4.mockapi.io/api/v1",
      contentType: "application/json");

  TodoModel() {
    initTodos();
  }

  // 처음에 todo 데이터들을 불러오는 함수
  initTodos() async {
    final dio = Dio(options);
    final response = await dio.get('/todo');
    if (response.statusCode == 200) {
      /* 만약 응답 코드가 성공(200)값을 가진다면, 
      응답으로 받은 데이터(response.data)를 List 타입의 data 변수에 할당하고, 
      비어있는 todos List에 해당 data를 할당해줍니다.
      이때 data는 List 형식이니, 그 안의 데이터들을 하나하나 풀어서 넣어줘야겠죠?
      마지막으로 UI를 업데이트 해주기 위해 꼭 필요한 함수!를 호출해줍니다.
      */
    }
  }

  // 새로운 todo 데이터를 List에 추가하는 post 함수
  // 함수에서 뭐가 빠졌을까요? (과연 일반 함수처럼 선언하면 될까요?)
  addTodo(String todo) {
    final dio = Dio(options);
    final response = dio.post('/todo', data: {'todo': todo});
    /* 만약 reponse의 상태 코드가 성공(200)이면 
    todos 리스트에 객체({})를 추가하는 내장함수를 사용해서 데이터를 추가해줍니다.
    이때, 객체의 "id" 필드에는 post한 response의 데이터의 id 키의 값을 String 타입으로 전환해서 할당하고, "todo"필드에는 post했던 todo 데이터를 그대로 넣어줍니다.
    */
  }

  // 기존 todo 데이터를 List에서 삭제하는 delete 함수
  // 함수에서 뭐가 빠졌을까요? (과연 일반 함수처럼 선언하면 될까요?)
  deleteTodo(String id, int index) {
    final dio = Dio(options);
    final response = dio.delete('/todo/$id');
    /* 만약 reponse의 상태 코드가 성공(200)이면 
    todos 리스트에서 함수 인자로 받은 index 위치의 데이터를 삭제하고
    사용자 UI를 업데이트하는 로직을 완성해보세요!*/
  }
}

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  // TextEditingController를 선언하고, 아래 TextField 위젯 속성에 추가해보세요

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Todo')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      // 여기!
                      decoration: InputDecoration(hintText: 'New Todo'),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // 저장 버튼을 누르면 context의 TodoModel을 불러와서 새롭게 todo 데이터를 추가해보세요. (위에서 만든 함수 사용)
                        // 추가한 다음엔, 컨트롤러를 초기화해줘야 유저가 새로운 값을 작성할 수 있겠죠?
                      },
                      child: const Text('저장'))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: context.watch<TodoModel>().todos.length,
                itemBuilder: (context, index) {
                  final todo = context.watch<TodoModel>().todos[index];
                  return ListTile(
                    title: Text(todo['todo']!),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // 삭제 버튼을 누르면 context의 TodoModel을 불러와서, 삭제하고 싶은 todo 데이터의 id와 index를 인자로 전달해줍니다. (위에서 만든 함수 사용)
                        // 각 데이터의 id값은 주민번호처럼 고유 번호이므로 절대 null값이 될 수 없겠죠?
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
