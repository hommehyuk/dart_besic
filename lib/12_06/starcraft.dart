class Unit {
  String name;
  int health;
  int attackDamage;
  int group;

  Unit(
    this.name,
    this.health,
    this.attackDamage,
    this.group,
  );

  void attack(Unit target) {
    print('$name이(가) $target.name을(를) 공격합니다. 데미지: $attackDamage');
  }

  void takeDamage(int damage) {
    health -= damage;
    print('$name이(가) $damage의 피해를 입었습니다. 현재 체력: $health');
  }

  void assignToGroup(int groupNumber) {
    group = groupNumber;
    print('$name을(를) 부대 $groupNumber에 지정했습니다.');
  }
}

class TerranUnit extends Unit {
  TerranUnit(
    String name,
    int health,
    int attackDamage,
    int group,
  ) : super(
          name,
          health,
          attackDamage,
          group,
        );

  void repair(Unit target) {
    print('$name이(가) ${target.name}을(를) 수리합니다.');
    target.health += 15;
    print('${target.name}의 체력이 15 회복되었습니다. 현재 체력: ${target.health}');
  }
}

class TerranSCV extends TerranUnit {
  TerranSCV() : super('SCV', 45, 5, 12);
}

class TerranMedic extends TerranUnit {
  TerranMedic() : super('Medic', 50, 0, 12);

  void heal(Unit target) {
    print('$name이(가) ${target.name}을(를) 치료합니다.');
    target.health += 10;
    print('${target.name}의 체력이 10 회복되었습니다. 현재 체력: ${target.health}');
  }
}

class TerranMarine extends TerranUnit {
  TerranMarine() : super('Marine', 40, 6, 12);
}

class TerranTank extends TerranUnit {
  TerranTank() : super('Tank', 150, 30, 12);
}

class TerranVulture extends TerranUnit {
  TerranVulture() : super('Vulture', 80, 20, 12);
}

class ZergUnit extends Unit {
  int regenerationRate;

  ZergUnit(String name, int health, int attackDamage, this.regenerationRate)
      : super(
          name,
          health,
          attackDamage,
          regenerationRate,
        );

  void regenerate() {
    health += regenerationRate;
    print('$name의 체력이 $regenerationRate 회복되었습니다. 현재 체력: $health');
  }
}

class ZergZergling extends ZergUnit {
  ZergZergling() : super('Zergling', 35, 5, 2);
}

class ZergHydralisk extends ZergUnit {
  ZergHydralisk() : super('Hydralisk', 80, 12, 2);
}

class ProtossUnit extends Unit {
  int shield;
  int shieldRegenerationRate;

  ProtossUnit(
    String name,
    int health,
    int attackDamage,
    this.shield,
    this.shieldRegenerationRate,
  ) : super(
          name,
          health,
          attackDamage,
          shield,
        );

  void regenerateShield() {
    shield += shieldRegenerationRate;
    print('$name의 방어막이 $shieldRegenerationRate 회복되었습니다. 현재 방어막: $shield');
  }
}

class ProtossZealot extends ProtossUnit {
  ProtossZealot() : super('Zealot', 50, 100, 16, 1);
}

class ProtossDragoon extends ProtossUnit {
  ProtossDragoon() : super('Dragoon', 80, 120, 20, 1);
}

void main() {
  // 사용 예시
  TerranSCV scv = TerranSCV();
  TerranMedic medic = TerranMedic();
  TerranMarine marine = TerranMarine();
  TerranTank tank = TerranTank();
  TerranVulture vulture = TerranVulture();

  ZergZergling zergling = ZergZergling();
  ZergHydralisk hydralisk = ZergHydralisk();

  ProtossZealot zealot = ProtossZealot();
  ProtossDragoon dragoon = ProtossDragoon();

  // 유닛 간 상호작용 예시
  scv.repair(tank);
  medic.heal(marine);
  marine.attack(zergling);
  zergling.regenerate();
  zealot.attack(dragoon);
  dragoon.regenerateShield();
}
