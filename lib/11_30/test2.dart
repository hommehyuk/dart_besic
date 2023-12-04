import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static int maxMP = 10;
  static int maxHP = 50;

  Cleric({this.name = '아서스', this.hp = 50, this.mp = 10});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxMP;
    }
  }

  int pray(int prayTime) {
    int recoveryAmount = Random().nextInt(3);
    int totalRecovery = prayTime + recoveryAmount;

    int actualRecovery = min(totalRecovery, maxMP - mp);

    mp += actualRecovery;
    return actualRecovery;
  }
}

void main() {
  final cleric = Cleric(name: '아서스', hp: 40, mp: 10);
  final cleric1 = Cleric(name: '아서스', hp: 35);
  final cleric2 = Cleric(name: '아서스');
  final cleric3 = Cleric();
}
