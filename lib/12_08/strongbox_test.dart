enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _item;
  KeyType _keyType;
  int _usageCount;

  StrongBox(this._keyType) : _usageCount = 0 {
    // 열쇠의 종류에 따라 사용횟수 초기화
    switch (_keyType) {
      case KeyType.padlock:
        _usageCount = 1024;
        break;
      case KeyType.button:
        _usageCount = 10000;
        break;
      case KeyType.dial:
        _usageCount = 30000;
        break;
      case KeyType.finger:
        _usageCount = 1000000;
        break;
    }
  }

  void put(E item) => _item = item;

  E? get() {
    if (_usageCount > 0) {
      _usageCount--;
    }
    return _item;
  }
}

void main() {
  var myBox = StrongBox<String>(KeyType.button);
  myBox.put('돈다발');

  for (var i = 0; i < 5; i++) {
    var Item = myBox.get();
    if (Item != null) {
      print('얻은 아이템: $Item');
    }
  }
}
