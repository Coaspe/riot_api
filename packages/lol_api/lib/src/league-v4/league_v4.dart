import 'package:riot_api/riot_api.dart';
import '../league-exp-v4/model/league_entry_dto.dart';
import 'model/league_list_dto.dart';

class LeagueV4 {
  /// Get the challenger league for given queue
  static Future<LeagueListDTO> getChallengerLeagueForQueue(
      RegionValues region, QueueType queue,
      {Map<String, String>? headers}) async {
    assert(queue != QueueType.rankedTFT,
        "'queue' must be one of [RANKED_SOLO_5x5, RANKED_FLEX_SR, RANKED_FLEX_TT]");
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/challengerleagues/by-queue/${queue.valueToString}';
    LeagueListDTO leagueListDTO =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return leagueListDTO;
  }

  /// Get league entries in all queues for a given summoner ID.
  static Future<List<LeagueEntryDTO>> getAllLeageueEntriesForSummonerId(
      RegionValues region, String encryptedSummonerId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/entries/by-summoner/$encryptedSummonerId';
    final leagueEntryDTOList =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return leagueEntryDTOList;
  }

  /// Get all the league entries.
  ///
  /// Queue value must be a valid ranked queue.
  static Future<List<LeagueEntryDTO>> getAllLeageueEntries(RegionValues region,
      {required QueueType queue,
      required Tier tier,
      required Division division,
      int? page,
      Map<String, String>? headers}) async {
    assert(
        tier != Tier.challenger &&
            tier != Tier.grandmaster &&
            tier != Tier.master,
        "In this query, the tier must be set to diamond or less.");
    assert(queue != QueueType.rankedTFT,
        "'queue' must be one of [RANKED_SOLO_5x5, RANKED_FLEX_SR, RANKED_FLEX_TT]");
    String url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/entries/${queue.valueToString}/${tier.name.toUpperCase()}/${division.valueToString}';
    if (page != null) url += '?page=$page';
    final leagueEntryDTOList =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return leagueEntryDTOList;
  }

  /// Get the grandmaster league of a specific queue.
  static Future<LeagueListDTO> getGrandmasterSpecificQueue(
      RegionValues region, QueueType queue,
      {Map<String, String>? headers}) async {
    assert(queue != QueueType.rankedTFT,
        "'queue' must be one of [RANKED_SOLO_5x5, RANKED_FLEX_SR, RANKED_FLEX_TT]");
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/grandmasterleagues/by-queue/${queue.valueToString}';
    LeagueListDTO grandmasterQueue =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return grandmasterQueue;
  }

  /// Get league with given ID, including inactive entries.
  ///
  /// [leagueId] is a UUID of league.
  static Future<LeagueListDTO> getLeagueByLeagueId(
      RegionValues region, String leagueId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/leagues/$leagueId';
    LeagueListDTO grandmasterQueue =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return grandmasterQueue;
  }

  /// Get the master league for given queue.
  static Future<LeagueListDTO> getMasterLeagueForGivenQueue(
      RegionValues region, QueueType queue,
      {Map<String, String>? headers}) async {
    assert(queue != QueueType.rankedTFT,
        "'queue' must be one of [RANKED_SOLO_5x5, RANKED_FLEX_SR, RANKED_FLEX_TT]");
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/league/v4/masterleagues/by-queue/${queue.valueToString}';
    LeagueListDTO masterQueue =
        await ApiUtil.requestApi(url, LeagueListDTO.fromJson, headers);
    return masterQueue;
  }
}
