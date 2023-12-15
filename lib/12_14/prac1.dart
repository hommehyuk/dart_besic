import 'dart:convert';
import 'package:http/http.dart' as http;

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // Factory method to create a Todo instance from a JSON object
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }

  // Method to convert a Todo instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}

void main() async {
  // Example of using Todo class with fromJson() and toJson()
  Map<String, dynamic> jsonExample = {
    'userId': 1,
    'id': 1,
    'title': 'delectus aut autem',
    'completed': false,
  };

  // Creating a Todo instance from JSON
  Todo todoInstance = Todo.fromJson(jsonExample);
  print('Todo instance created from JSON: $todoInstance');

  // Converting Todo instance to JSON
  Map<String, dynamic> jsonFromTodo = todoInstance.toJson();
  print('JSON representation of Todo instance: $jsonFromTodo');

  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> todos = json.decode(response.body);

    // 타이틀만 출력
    for (var todo in todos) {
      print(todo['title']);
    }
  } else {
    print('데이터 찾아오기 실패. Status code: ${response.statusCode}');
  }