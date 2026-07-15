import 'package:riot_api/riot_api.dart';
import 'model/match_dto.dart';

class TFTMatchV1 {
  /// Get a list of match ids by PUUID
  ///
  /// [start] represents start index defaults to 0.
  /// [endTime] and [startTime] are epoch timestamp in seconds.
  /// The matchlist started storing timestamps on June 16th, 2021.
  /// Any matches played before June 16th, 2021 won't be included in the results if the startTime filter is set.
  /// [count] represents number of match ids to return. defaults to 20.
  static Future<List<String>> getMatchListByPuuid(
    PlatformValues platform,
    String puuid, {
    int start = 0,
    int? endTime,
    int? startTime,
    int count = 20,
    Map<String, String>? headers,
  }) async {
    if (start < 0) {
      throw ArgumentError.value(start, 'start', 'must be non-negative');
    }
    if (count <= 0) {
      throw ArgumentError.value(count, 'count', 'must be greater than zero');
    }
    if (startTime != null && endTime != null && startTime > endTime) {
      throw ArgumentError.value(
        endTime,
        'endTime',
        'must be greater than or equal to startTime',
      );
    }
    final url =
        Uri.parse(
              '${platform.platformToUrl}/${Qtype.tft.name}/match/v1/matches/by-puuid/${Uri.encodeComponent(puuid)}/ids',
            )
            .replace(
              queryParameters: {
                'count': '$count',
                'start': '$start',
                if (startTime != null) 'startTime': '$startTime',
                if (endTime != null) 'endTime': '$endTime',
              },
            )
            .toString();
    final league = await ApiUtil.requestApi<List<String>, List<dynamic>>(
      url,
      (json) => <String>[...json],
      headers,
    );
    return league;
  }

  /// Get a match by match id
  static Future<MatchDTO> getMatchByMatchId(
    PlatformValues platform,
    String matchId, {
    Map<String, String>? headers,
  }) async {
    String url =
        '${platform.platformToUrl}/${Qtype.tft.name}/match/v1/matches/$matchId';
    MatchDTO match = await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }
}
