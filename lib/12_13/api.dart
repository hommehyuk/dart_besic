import 'dart:convert';

Future<void> main() async {
  final movieInfo = await getMovieInfo();
  final decodedData = jsonDecode(movieInfo);

  final director = decodedData['director'];
  print('Director: $director');
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}
