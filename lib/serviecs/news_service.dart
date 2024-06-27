import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  static const String _apiKey = '67a82e6708e84a69a6a2922404c85ff5';
  static const String _baseUrl = 'https://newsapi.org/v2';

  Future<List<dynamic>> fetchNews(String category) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/top-headlines?country=eg&category=$category&apiKey=$_apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['articles'];
    } else {
      throw Exception('Failed to load news');
    }
  }


}
