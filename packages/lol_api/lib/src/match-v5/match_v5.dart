import 'package:riot_api/riot_api.dart';
import 'model/match_dto.dart';
import 'model/match_timeline_dto.dart';
import 'model/replay_dto.dart';

enum MatchType { ranked, normal, tourney, tutorial }

class MatchV5 {
  /// Get a list of match ids by puuid
  ///
  /// [startTime] is an epoch timestamp in seconds.
  /// The matchlist started storing timestamps on June 16th, 2021.
  /// Any matches played before June 16th, 2021 won't be included
  /// in the results if the startTime filter is set.
  ///
  /// [endTime] is an epoch timestamp in seconds.
  ///
  /// [queue] is a filter the list of match ids by a specific queue id.
  /// This filter is mutually inclusive of the type filter
  /// meaning any match ids returned must match both the queue and type filters.
  ///
  /// [type] is a filter the list of match ids by the type of match.
  /// This filter is mutually inclusive of the queue filter
  /// meaning any match ids returned must match both the queue and type filters.
  ///
  /// [start] is a start index. Defaults to 0.
  ///
  /// [end] is number of match ids to return. Defaults to 20. Valid values: 0 to 100.
  static Future<List<String>> getMatchIdsByPuuid(
    PlatformValues platform,
    String puuid, {
    int? startTime,
    int? endTime,
    int? queue,
    MatchType? type,
    int? start = 0,
    int? count = 20,
    Map<String, String>? headers,
  }) async {
    if (startTime != null && endTime != null && startTime > endTime) {
      throw ArgumentError.value(
        endTime,
        'endTime',
        'must be greater than or equal to startTime',
      );
    }
    if (count != null && (count > 100 || count < 0)) {
      throw ArgumentError.value(count, 'count', 'must be between 0 and 100');
    }

    final url =
        Uri.parse(
              '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/by-puuid/${Uri.encodeComponent(puuid)}/ids',
            )
            .replace(
              queryParameters: {
                if (startTime != null) 'startTime': '$startTime',
                if (endTime != null) 'endTime': '$endTime',
                if (queue != null) 'queue': '$queue',
                if (type != null) 'type': type.name,
                if (start != null) 'start': '$start',
                if (count != null) 'count': '$count',
              },
            )
            .toString();

    List<dynamic> matchIds =
        await ApiUtil.requestApi<List<dynamic>, List<dynamic>>(
          url,
          (json) => json,
          headers,
        );
    return <String>[...matchIds];
  }

  /// Get a match by match id
  static Future<MatchDTO> getMatchByMatchId(
    PlatformValues platform,
    String matchId, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/${Uri.encodeComponent(matchId)}';

    MatchDTO match = await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }

  /// Get a match timeline by match id
  static Future<MatchTimelineDTO> getMatchTimelineByMatchId(
    PlatformValues platform,
    String matchId, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/${Uri.encodeComponent(matchId)}/timeline';

    return ApiUtil.requestApi(url, MatchTimelineDTO.fromJson, headers);
  }

  /// Get replay file URLs for a player.
  static Future<ReplayDTO> getReplaysByPuuid(
    PlatformValues platform,
    String puuid, {
    Map<String, String>? headers,
  }) {
    final url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/by-puuid/${Uri.encodeComponent(puuid)}/replays';
    return ApiUtil.requestApi(url, ReplayDTO.fromJson, headers);
  }
}
