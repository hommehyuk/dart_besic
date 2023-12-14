import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  try {
    String result = await Future.delayed(Duration(seconds: 5));
    print(result); // timeout이 발생하지 않았으면 'ok' 출력
  } catch (e) {
    print('timeout'); // 타임아웃이 발생하면 'timeout' 출력
  }
}
