class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int poisonAttackCount = 5;

  PoisonSlime(String suffix) : super(suffix);
  void attack(Hero hero) {
    super.attack(hero); // 보통 슬라임과 같은 공격

    // 독 공격의 남은 횟수가 0이 아니면 추가로 수행
    if (poisonAttackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = calculatePoisonDamage();
      hero.receiveDamage(poisonDamage);
      poisonAttackCount--;
    }
  }
  int calculatePoisonDamage() {
    // 용사의 HP의 1/5에 해당하는 포인트를 계산하여 반환
    return (super.hp / 5).round();
  }
}

class Hero {
  void receiveDamage(int poisonDamage) {}
}

void main() {
  Hero hero = Hero();
  PoisonSlime poisonSlime = PoisonSlime('A');

  // 독 슬라임의 공격을 수행
  poisonSlime.attack(hero);
}

