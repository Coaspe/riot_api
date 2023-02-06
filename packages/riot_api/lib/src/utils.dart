import 'package:http/http.dart' as http;
import 'dart:convert';
import '../riot_api.dart';

class ApiUtil {
  static Future<T> requestApi<T, G>(String url, Function(G json) task,
      [Map<String, String>? headers]) async {
    if (RiotApi.apiKey == null) {
      throw Exception();
    }
    headers ??= {};
    headers["X-Riot-Token"] = RiotApi.apiKey!;
    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      switch (response.statusCode) {
        case 200:
          return task(jsonDecode(response.body));
        default:
          throw Exception(
              "Status code :${response.statusCode}, ${response.body}");
      }
    } catch (e) {
      rethrow;
    }
  }
}
