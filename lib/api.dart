import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quotessss/quote_model.dart';

class Api {
  static Future<Autogenerated> getRandomQuote() async {
    try {
      final response = await http.get(
          Uri.parse('https://api.quotable.io/random'));

      if (response.statusCode == 200) {
        return Autogenerated.fromJson(jsonDecode(response.body));
      } else {
        print('API Error: ${response.statusCode}');
        throw Exception('Failed to load quote');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to generate quote');
    }
  }
}