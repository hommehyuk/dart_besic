// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word {
  String word = '';

  bool isVowel(int i) {
    // 문자열의 i번째 문자를 가져온 후 소문자로 변환하여 비교
    String letter = word.substring(i, i + 1).toLowerCase();

    // 영어에서의 모음인지 확인
    return letter == 'a' ||
        letter == 'e' ||
        letter == 'i' ||
        letter == 'o' ||
        letter == 'u';
  }

  bool isConsonant(int i) {
    // 문자열의 i번째 문자를 가져온 후 소문자로 변환하여 비교
    String letter = word.substring(i, i + 1).toLowerCase();

    // 영어에서의 자음인지 확인
    return !(letter == 'a' ||
        letter == 'e' ||
        letter == 'i' ||
        letter == 'o' ||
        letter == 'u');
  }
}

void main() {
  Word wordObject = Word();
  wordObject.word = 'example';

  // 예시로 2번째 글자가 모음인지 확인
  print(wordObject.isVowel(1)); // 출력 결과: true
}
