import 'dart:math';

class Cleric {
  String name = 'hyuk';
  int HP = 50;
  int MP = 10;
  final int MaxHP = 50;
  final int MaxMP = 10;

  Cleric(this.name, this.HP, this.MP);

  void selfAid() {
    if (MP >= 5) {
      MP -= 5;
      HP = MaxHP;
    }
  }

  int pray(int prayTime) {
    int recoveryAmount = Random().nextInt(3);
    int totalRecovery = prayTime + recoveryAmount;

    int actualRecovery = min(totalRecovery, MaxMP - MP);

    MP += actualRecovery;
    return actualRecovery;
  }
}

void main() {
  Cleric cleric = Cleric('hyuk', 50, 10);
  print('HP: ${cleric.HP}, MP: ${cleric.MP}');

  cleric.selfAid();
  print('selfAid HP: ${cleric.HP}, MP: ${cleric.MP}');

  int prayTime = 3;
  int recoveredMP = cleric.pray(prayTime);
  print(
    'pray $prayTime seconds - HP: ${cleric.HP}, MP: ${cleric.MP}, Recovered MP: $recoveredMP',
  );
}