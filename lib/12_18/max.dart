int? findMax(List<int> numbers) {
  // 리스트가 비어있을 경우 예외 처리
  if (numbers.isEmpty) {
    return null;
  }

  // 초기 최댓값 설정
  int max = numbers[0];

  // 리스트를 순회하면서 최댓값 갱신
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }

  return max;
}

void main() {
  // 예시 사용
  List<int> numbersList = [2, 5, 1, 9, 3];
  int? result = findMax(numbersList);
  print(result);
}
