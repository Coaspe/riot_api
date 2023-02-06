import 'package:riot_api/riot_api.dart';
import 'model/match_dto.dart';

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
      PlatformValues platform, String puuid,
      {int? startTime,
      int? endTime,
      int? queue,
      MatchType? type,
      int? start = 0,
      int? count = 20,
      Map<String, String>? headers}) async {
    if (startTime != null && endTime != null && startTime > endTime) {
      assert(false, "'endTime' must be greater than or equal to 'startTime'.");
    }
    if (count != null && (count > 100 || count < 0)) {
      assert(false,
          "'count' is greater than or equal to 0 and smaller than or equal to 100");
    }

    headers ??= {};
    String url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/by-puuid/$puuid/ids?';

    if (startTime != null) url += "startTime=$startTime&";
    if (endTime != null) url += "endTime=$endTime&";
    if (queue != null) url += "queue=$queue&";
    if (type != null) url += "type=${type.name}&";
    if (start != null) url += "start=$start&";
    if (count != null) url += "count=$count&";

    List<dynamic> matchIds =
        await ApiUtil.requestApi(url, (json) => json, headers);
    return <String>[...matchIds];
  }

  /// Get a match by match id
  static Future<MatchDTO> getMatchByMatchId(
      PlatformValues platform, String matchId,
      {Map<String, String>? headers}) async {
    String url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/$matchId?';

    MatchDTO match = await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }

  /// Get a match timeline by match id
  static Future<MatchDTO> getMatchTimelineByMatchId(
      PlatformValues platform, String matchId,
      {Map<String, String>? headers}) async {
    String url =
        '${platform.platformToUrl}/${Qtype.lol.name}/match/v5/matches/$matchId/timeline';

    MatchDTO match = await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }
}
