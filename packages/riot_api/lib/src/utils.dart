import 'dart:convert';

import '../riot_api.dart';

final class RiotApiException implements Exception {
  const RiotApiException({
    required this.statusCode,
    required this.body,
    required this.uri,
  });

  final int statusCode;
  final String body;
  final Uri uri;

  @override
  String toString() =>
      'RiotApiException($statusCode, $uri): ${body.isEmpty ? 'No response body' : body}';
}

/// Utility class for Riot API calls.
class ApiUtil {
  ApiUtil._();

  static final ApiUtil _instance = ApiUtil._();

  factory ApiUtil() => _instance;

  static Future<T> requestApi<T, G>(
    String url,
    T Function(G json) task, [
    Map<String, String>? headers,
  ]) async {
    final requestHeaders = <String, String>{...?headers};
    final hasAuthorization = requestHeaders.keys.any(
      (header) => header.toLowerCase() == 'authorization',
    );

    if (!hasAuthorization) {
      final apiKey = RiotApi.apiKey;
      if (apiKey == null || apiKey.isEmpty) {
        throw StateError('Configure RiotApi with an API key before requesting');
      }
      requestHeaders['X-Riot-Token'] = apiKey;
    }

    final uri = Uri.parse(url);
    final response = await RiotApi.client.get(uri, headers: requestHeaders);
    if (response.statusCode != 200) {
      throw RiotApiException(
        statusCode: response.statusCode,
        body: utf8.decode(response.bodyBytes),
        uri: uri,
      );
    }

    final json = jsonDecode(utf8.decode(response.bodyBytes)) as G;
    return task(json);
  }
}
