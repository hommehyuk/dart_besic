// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
// 5. 밀라노에 거래자가 있는가?
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
// 7. 전체 트랜잭션 중 최대값은 얼마인가?
// 8. 전체 트랜잭션 중 최소값은 얼마인가?

import 'dart:ffi';
import 'dart:math';

void main() {
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  final transactions2011 =
      transactions.where((transaction) => transaction.year == 2011).toList();
  transactions2011.sort((a, b) => a.value.compareTo(b.value));
  print(transactions2011.map((transaction) => transaction.trader.name));

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  final workCity =
      transactions.map((transaction) => transaction.trader.city).toSet();
  print(workCity);

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final cambridgeTraders = transactions
      .where((transaction) => transaction.trader.city == 'Cambridge')
      .map((transaction) => transaction.trader)
      .toList();
  cambridgeTraders.sort((a, b) => a.name.compareTo(b.name));
  print(cambridgeTraders.map((trader) => trader.name));

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final allTraders =
      transactions.map((transaction) => transaction.trader).toSet().toList();

  // 5. 밀라노에 거래자가 있는가?
  final milanTrader =
      transactions.any((transaction) => transaction.trader.city == 'Milan');
  print(milanTrader);

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  final cambridgeTransactions = transactions
      .where((transaction) => transaction.trader.city == 'Cambridge')
      .map((transaction) => transaction.trader)
      .toList();
  print(cambridgeTransactions);

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  final maxTransaction =
      transactions.map((transaction) => transaction.value).reduce(max);
  print(maxTransaction);

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final minTransaction =
      transactions.map((transaction) => transaction.value).reduce(min);
  print(minTransaction);
}

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}
