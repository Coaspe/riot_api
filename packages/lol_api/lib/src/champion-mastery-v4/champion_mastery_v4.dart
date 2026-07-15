import 'package:riot_api/riot_api.dart';

import 'model/champion_mastery_dto.dart';

class ChampionMasteryV4 {
  /// Get all champion mastery entries sorted by number of champion points descending,
  static Future<List<ChampionMasteryDTO>> getAllChampionMastery(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/champion-mastery/v4/champion-masteries/by-puuid/${Uri.encodeComponent(puuid)}';
    List<ChampionMasteryDTO> mastery =
        await ApiUtil.requestApi<List<ChampionMasteryDTO>, List<dynamic>>(
          url,
          (json) => json
              .map(
                (e) => ChampionMasteryDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
          headers,
        );
    return mastery;
  }

  /// Get a champion mastery by PUUID and champion ID.
  static Future<ChampionMasteryDTO> getChampionMasteryByPuuidAndChampionId(
    RegionValues region,
    String puuid,
    int championId, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/champion-mastery/v4/champion-masteries/by-puuid/${Uri.encodeComponent(puuid)}/by-champion/$championId';
    final mastery = await ApiUtil.requestApi(
      url,
      ChampionMasteryDTO.fromJson,
      headers,
    );
    return mastery;
  }

  /// Get specified number of top champion mastery entries sorted by number of champion points descending.
  static Future<List<ChampionMasteryDTO>> getAllChampionMasteryDesc(
    RegionValues region,
    String puuid, {
    int? count,
    Map<String, String>? headers,
  }) async {
    String url =
        '${region.regionToUrl}/${Qtype.lol.name}/champion-mastery/v4/champion-masteries/by-puuid/${Uri.encodeComponent(puuid)}/top';
    if (count != null) url += '?count=$count';
    List<ChampionMasteryDTO> mastery =
        await ApiUtil.requestApi<List<ChampionMasteryDTO>, List<dynamic>>(
          url,
          (json) => json
              .map(
                (e) => ChampionMasteryDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
          headers,
        );
    return mastery;
  }

  /// Get a player's total champion mastery score, which is the sum of individual champion mastery levels.
  static Future<int> getTotalMasteryScore(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/champion-mastery/v4/scores/by-puuid/${Uri.encodeComponent(puuid)}';
    int totalMastery = await ApiUtil.requestApi<int, dynamic>(
      url,
      (score) => score as int,
      headers,
    );
    return totalMastery;
  }
}
