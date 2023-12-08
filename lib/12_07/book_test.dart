class Book implements Comparable<Book> {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Book && title == other.title && publishDate == other.publishDate;
  }

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book clone() {
    return Book(
      title: this.title,
      comment: this.comment,
      publishDate: this.publishDate,
    );
  }
}

void main() {
  Set<Book> bookSet = Set<Book>();

  Book book1 = Book(title: "Book1", comment: "Comment1", publishDate: DateTime.now());
  Book book2 = Book(title: "Book2", comment: "Comment2", publishDate: DateTime.now().subtract(Duration(days: 2)));
  Book book3 = Book(title: "Book3", comment: "Comment3", publishDate: DateTime.now().add(Duration(days: 3)));

  bookSet.add(book1);
  bookSet.add(book2);
  bookSet.add(book3);

  // 정렬 전
  print("정렬 전:");
  bookSet.forEach((book) {
    print("${book.title} - ${book.publishDate}");
  });

  // 정렬 후
  List<Book> sortedBooks = bookSet.toList()..sort();
  print("\n정렬 후:");
  sortedBooks.forEach((book) {
    print("${book.title} - ${book.publishDate}");
  });

  // deep copy 테스트
  Book copiedBook = book1.clone();
  print("\nDeep Copy 테스트:");
  print("원본: ${book1.title} - ${book1.publishDate}");
  print("복사본: ${copiedBook.title} - ${copiedBook.publishDate}");
}
