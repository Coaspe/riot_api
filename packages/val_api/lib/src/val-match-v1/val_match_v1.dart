import 'package:riot_api/riot_api.dart';
import 'package:val_api/src/val-match-v1/model/match_dto.dart';
import 'package:val_api/src/val-match-v1/model/matchlist_dto.dart';

import 'model/recent_matches_dto.dart';

/// Only who has production key can call this query.
///
/// I can't test this api yet. 😭
class ValMatchV1 {
  /// Get match by id
  static Future<MatchDTO> getMatchById(RegionValues region, String matchId,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.val.name}/match/v1/matches/$matchId';
    MatchDTO match = await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }

  /// Get matchlist for games played by puuid
  static Future<MatchlistDTO> getMatchByPuuid(RegionValues region, String puuid,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.val.name}/match/v1/matchlists/by-puuid/$puuid';
    MatchlistDTO match =
        await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }

  /// Get recent matches
  ///
  /// Returns a list of match ids that have completed in the last
  /// 10 minutes for live regions and 12 hours for the esports routing value.
  /// NA/LATAM/BR share a match history deployment. As such, recent matches will return
  /// a combined list of matches from those three regions.
  /// Requests are load balanced so you may see some inconsistencies as matches are added/removed from the list.
  static Future<RecentMatchesDTO> getRecentMatches(
      RegionValues region, String queue,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.val.name}/match/v1/recent-matches/by-queue/$queue';
    RecentMatchesDTO match =
        await ApiUtil.requestApi(url, MatchDTO.fromJson, headers);
    return match;
  }
}
