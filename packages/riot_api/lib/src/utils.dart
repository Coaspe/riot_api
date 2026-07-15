import 'dart:convert';

import '../riot_api.dart';

enum ApiRequestMethod { get, post, put }

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
    return sendApi(url, task, headers: headers);
  }

  static Future<T> sendApi<T, G>(
    String url,
    T Function(G json) task, {
    ApiRequestMethod method = ApiRequestMethod.get,
    Map<String, String>? headers,
    Object? body,
  }) async {
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

    if (body != null) {
      requestHeaders.putIfAbsent('Content-Type', () => 'application/json');
    }

    final uri = Uri.parse(url);
    final encodedBody = body == null ? null : jsonEncode(body);
    final response = switch (method) {
      ApiRequestMethod.get => RiotApi.client.get(uri, headers: requestHeaders),
      ApiRequestMethod.post => RiotApi.client.post(
        uri,
        headers: requestHeaders,
        body: encodedBody,
      ),
      ApiRequestMethod.put => RiotApi.client.put(
        uri,
        headers: requestHeaders,
        body: encodedBody,
      ),
    };
    final resolvedResponse = await response;
    if (resolvedResponse.statusCode < 200 ||
        resolvedResponse.statusCode >= 300) {
      throw RiotApiException(
        statusCode: resolvedResponse.statusCode,
        body: utf8.decode(resolvedResponse.bodyBytes),
        uri: uri,
      );
    }

    final json = jsonDecode(utf8.decode(resolvedResponse.bodyBytes)) as G;
    return task(json);
  }
}
