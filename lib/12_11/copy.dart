// 파일을 복사하는 함수를 작성하시오
// 원본 파일 경로와 복사할 파일 경로는
// 프로그램 실행시 파라미터로 전달되는 것으로 하고
// 버퍼링이나 에러 처리는 하지 않는다.

import 'dart:io';

void main() {
  void copy(String source, String target) {
    final sourceFile = File(source);
    final targetFile = File(target);

    sourceFile.writeAsStringSync('손흥민 월클 입니다');

    final text = sourceFile.readAsStringSync();

    targetFile.writeAsStringSync(text);
  }

  copy('source.txt', 'target.txt');
}
