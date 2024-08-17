import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/components/searchbar.dart';
import 'package:newsapp/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=in&pageSize=100&apiKey=' +
    Key.key + '&q' + MySearchbar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');
  return (result['articles']);
}