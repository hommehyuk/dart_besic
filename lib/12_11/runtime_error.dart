void main() {
  final numString = '10.5';

  try {
    int num = int.parse(numString);
    print(num);
  } catch (e) {
    print('에러 발생: $e');
    print(0);
  }
}
