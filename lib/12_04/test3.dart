class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power});

  void setName(String name) {
    if (name == null || name.length < 3) {
      throw Exception("에러메세지");
    }
  }

  void setMagicPower(double magicPower) {
    if (magicPower < 0.5 || magicPower > 100.0) {
      throw Exception("에러메세지");
    }
  }
}

class Wizard {
  String name;
  Wand? wand;
  int _hp;
  int _mp;

  Wizard({
    required this.name,
    this.wand,
    required int hp,
    required int mp,
  })  : _hp = hp,
        _mp = mp;

  void setName(String name) {
    if (name == null || name.length < 3) {
      throw Exception("에러메세지");
    }
  }

  void setWand(Wand wand) {
    if (wand == null) {
      throw Exception("에러메세지");
    }
  }

  void setHp(int hp) {
    // HP가 음수가 되는 경우 0으로 설정
    _hp = hp < 0 ? 0 : hp;
  }

  void setMp(int mp) {
    if (mp < 0) {
      throw Exception("에러메세지");
    }
    _mp = mp;
  }
}

void main() {
 Wand wand = Wand(name: '지팡이', power: 10);
 print(wand.name);
 Wizard wizard = Wizard(name: 'Hyuk', hp: 10, mp: 10);
 print(wizard.name);
}
