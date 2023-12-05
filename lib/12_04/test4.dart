// 2-1
// 1) Set
// 2) List
// 3) Map

class Person {
  String name;
  int age;

  // 생성자를 통해 이름과 나이를 받아 인스턴스를 생성
  Person(this.name, this.age);
}

void main() {
  // Person 인스턴스 생성 및 List에 추가
  List<Person> people = [
    Person('홍길동', 20),
    Person('한석봉', 25),
  ];

  // List에 담긴 모든 Person 인스턴스의 이름과 나이를 출력
  for (Person person in people) {
    print('${person.name}의 나이는 ${person.age}살');
  }
}
