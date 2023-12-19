String reverseString(String input) {
  // 문자열을 List로 변환하여 뒤집기
  List<String> characters = input.split('');
  characters = characters.reversed.toList();

  // List를 다시 문자열로 합치기
  String reversedString = characters.join('');

  return reversedString;
}

void main() {
  // 예시 사용
  String originalString = 'Hello';
  String reversedResult = reverseString(originalString);
  print(reversedResult);
}
