// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)

import 'dart:io';

Future<void> csvFile() async {
  String filePath = 'sample.csv';
  String copyFilePath = 'sample_copy.csv';

  await File('sample.csv')
      .readAsLines()
      .then((List<String> lines) {
        for (int i = 0; i < lines.length; i++) {
          if (lines[i].contains('한석봉')) {
            lines[i] = lines[i].replaceAll('한석봉', '김석봉');
          }
        }
        return File('sample_copy.csv').writeAsString(lines.join('\n'));
      })
      .then((_) => print('수정 완료'))
      .catchError((e) => print('오류: $e'));
}

void main() {
  csvFile();
}
