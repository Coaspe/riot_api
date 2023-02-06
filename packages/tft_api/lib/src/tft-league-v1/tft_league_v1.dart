import 'model/league_entry_dto.dart';
import 'model/league_list_dto.dart';
import 'model/top_rated_ladder_entry_dto.dart';
import 'package:riot_api/riot_api.dart';

class TFTLeagueV1 {
  static const tft = "tft";

  /// Get the challenger league
  static Future<LeagueListDTO> getChallengerLeague(RegionValues region,
      {Map<String, String>? headers}) async {
    String url = '${region.regionToUrl}/${Qtype.tft.name}/league/v1/challenger';
    LeagueListDTO league =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return league;
  }

  /// Get the challenger league
  static Future<List<LeagueEntryDTO>> getLeagueEntriesBySummonerId(
      RegionValues region, String summonerId,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/entries/by-summoner/$summonerId';
    final leagueEntries =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return leagueEntries;
  }

  /// Get all the league entries.
  static Future<List<LeagueEntryDTO>> getAllLeagueEntries(RegionValues region,
      {required Tier tier,
      required Division division,
      int? page,
      Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/entries/${tier.name.toUpperCase()}/${division.valueToString}';
    if (page != null) url += '?page=$page';
    final leagueEntries =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return leagueEntries;
  }

  /// Get the grandmaster league
  static Future<LeagueListDTO> getGrandmasterLeague(RegionValues region,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/grandmaster';
    LeagueListDTO league =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return league;
  }

  /// Get league with given ID, including inactive entries.
  ///
  /// [leagueId] is a UUID of the league.
  static Future<LeagueListDTO> getLeagueById(
      RegionValues region, String leagueId,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/leagues/$leagueId';
    LeagueListDTO league =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return league;
  }

  /// Get the master league
  static Future<LeagueListDTO> getMasterLeague(RegionValues region,
      {Map<String, String>? headers}) async {
    String url = '${region.regionToUrl}/${Qtype.tft.name}/league/v1/master';
    LeagueListDTO league =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return league;
  }

  /// Get the top rated ladder for given queue
  static Future<List<TopRatedLadderEntryDTO>> getTopRatedLadderByQueue(
      RegionValues region, String queue,
      {Map<String, String>? headers}) async {
    assert(queue == "RANKED_TFT_TURBO",
        "Available queue values : RANKED_TFT_TURBO");
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/rated-ladders/$queue/top';
    final entry =
        await ApiUtil.requestApi<List<TopRatedLadderEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) =>
                    TopRatedLadderEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return entry;
  }
}
