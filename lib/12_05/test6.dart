abstract class Asset {
  String name;
  int price;
  String color;

  Asset({
    required this.name,
    required this.price,
    required this.color,
  });
}

abstract class IntangibleAsset extends Asset {
  IntangibleAsset({
    required String name,
    required int price,
    required String color,
  }) : super(name: name, price: price, color: color);
}

abstract class TangibleAsset extends Asset {
  TangibleAsset({
    required String name,
    required int price,
    required String color,
  }) : super(name: name, price: price, color: color);
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name: name, price: price, color: color);
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
  }) : super(name: name, price: price, color: color);
}

class Patent extends IntangibleAsset {

  Patent({
    required String name,
    required int price,
    required String color,
  }) : super(name: name, price: price, color: color);
}

void main() {}
