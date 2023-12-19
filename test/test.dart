import 'package:test/test.dart';
import 'package:untitled/12_18/bank.dart';

void main() {
  test('Bank toJson and fromJson', () {
    Bank originalBank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');

    Map<String, dynamic> json = originalBank.toJson();
    Bank decodedBank = Bank.fromJson(json);

    expect(decodedBank.name, equals(originalBank.name));
    expect(decodedBank.address, equals(originalBank.address));
    expect(decodedBank.phone, equals(originalBank.phone));
  });
}
