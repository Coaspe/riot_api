import 'package:riot_api/riot_api.dart';

import '../val-match-v1/model/match_dto.dart';
import '../val-match-v1/model/matchlist_dto.dart';
import '../val-match-v1/model/recent_matches_dto.dart';

enum ValConsolePlatformType { playstation, xbox }

class ValConsoleMatchV1 {
  static Future<MatchDTO> getMatchById(
    ValRegionValues region,
    String matchId, {
    Map<String, String>? headers,
  }) {
    _validateRegion(region);
    final url =
        '${region.regionToUrl}/val/match/console/v1/matches/${Uri.encodeComponent(matchId)}';
    return ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
  }

  static Future<MatchlistDTO> getMatchlistByPuuid(
    ValRegionValues region,
    String puuid,
    ValConsolePlatformType platformType, {
    Map<String, String>? headers,
  }) {
    _validateRegion(region);
    final url = Uri.parse(
      '${region.regionToUrl}/val/match/console/v1/matchlists/by-puuid/${Uri.encodeComponent(puuid)}',
    ).replace(
      queryParameters: {'platformType': platformType.name},
    ).toString();
    return ApiUtil.requestApi(url, MatchlistDTO.fromJson, headers);
  }

  static Future<RecentMatchesDTO> getRecentMatches(
    ValRegionValues region,
    String queue, {
    Map<String, String>? headers,
  }) {
    _validateRegion(region);
    final url =
        '${region.regionToUrl}/val/match/console/v1/recent-matches/by-queue/${Uri.encodeComponent(queue)}';
    return ApiUtil.requestApi(url, RecentMatchesDTO.fromJson, headers);
  }
}

void _validateRegion(ValRegionValues region) {
  if (region == ValRegionValues.esports || region == ValRegionValues.kr) {
    throw ArgumentError.value(
      region,
      'region',
      'console match supports AP, BR, EU, LATAM, and NA',
    );
  }
}
