class Book {
  String title;
  DateTime pulishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.comment,
    required this.pulishDate,
  });
}

void main() {
  Book book = Book(
    title: 'book1',
    comment: 'comment',
    pulishDate: DateTime.now(),
  );
}
