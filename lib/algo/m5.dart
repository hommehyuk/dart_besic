void main() {
  print(solution([1, 3, 2, 5]));
}

int solution(List<int> cards) {
  final allCards = [1, 2, 3, 4, 5];

  for (var card in cards) {
    allCards.remove(card);
  }

  int result = allCards.first;
  return result;
}
