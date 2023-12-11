import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader,
      };
}

void main() {
  Employee leader = Employee('홍길동', 41);
  Department general_affairs = Department('총무부', leader);

  // Department 객체를 JSON 문자열로 직렬화
  String jsonString = jsonEncode(general_affairs.toJson());

  // 파일에 쓰기
  File file = File('company.txt');
  file.writeAsStringSync(jsonString);

  print('직렬화 및 파일 쓰기 완료.');
}
