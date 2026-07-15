import 'package:riot_api/riot_api.dart';

import '../match-v5/match_v5.dart';
import '../match-v5/model/match_dto.dart';
import '../match-v5/model/match_timeline_dto.dart';

class LolRsoMatchV1 {
  static Future<List<String>> getMatchIds(
    PlatformValues platform,
    String authorization, {
    int? startTime,
    int? endTime,
    int? queue,
    MatchType? type,
    int start = 0,
    int count = 20,
    Map<String, String>? headers,
  }) {
    if (startTime != null && endTime != null && startTime > endTime) {
      throw ArgumentError.value(
        endTime,
        'endTime',
        'must be greater than or equal to startTime',
      );
    }
    if (start < 0) {
      throw ArgumentError.value(start, 'start', 'must be non-negative');
    }
    if (count < 0 || count > 100) {
      throw ArgumentError.value(count, 'count', 'must be between 0 and 100');
    }
    final url = Uri.parse(
      '${platform.platformToUrl}/lol/rso-match/v1/matches/ids',
    ).replace(
      queryParameters: {
        if (startTime != null) 'startTime': '$startTime',
        if (endTime != null) 'endTime': '$endTime',
        if (queue != null) 'queue': '$queue',
        if (type != null) 'type': type.name,
        'start': '$start',
        'count': '$count',
      },
    ).toString();
    return ApiUtil.requestApi<List<String>, List<dynamic>>(
      url,
      (json) => json.cast<String>(),
      _authorizationHeaders(authorization, headers),
    );
  }

  static Future<MatchDTO> getMatch(
    PlatformValues platform,
    String authorization,
    String matchId, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/rso-match/v1/matches/${Uri.encodeComponent(matchId)}';
    return ApiUtil.requestApi(
      url,
      MatchDTO.fromJson,
      _authorizationHeaders(authorization, headers),
    );
  }

  static Future<MatchTimelineDTO> getTimeline(
    PlatformValues platform,
    String authorization,
    String matchId, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/lol/rso-match/v1/matches/${Uri.encodeComponent(matchId)}/timeline';
    return ApiUtil.requestApi(
      url,
      MatchTimelineDTO.fromJson,
      _authorizationHeaders(authorization, headers),
    );
  }
}

Map<String, String> _authorizationHeaders(
  String authorization,
  Map<String, String>? headers,
) => {...?headers, 'Authorization': authorization};
