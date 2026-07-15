import 'model/league_entry_dto.dart';
import 'model/league_list_dto.dart';
import 'model/top_rated_ladder_entry_dto.dart';
import 'package:riot_api/riot_api.dart';

enum TFTLeagueQueue { rankedTft, rankedTftDoubleUp }

extension TFTLeagueQueueEx on TFTLeagueQueue {
  String get value => switch (this) {
    TFTLeagueQueue.rankedTft => 'RANKED_TFT',
    TFTLeagueQueue.rankedTftDoubleUp => 'RANKED_TFT_DOUBLE_UP',
  };
}

class TFTLeagueV1 {
  static const tft = "tft";

  /// Get the challenger league
  static Future<LeagueListDTO> getChallengerLeague(
    RegionValues region, {
    TFTLeagueQueue? queue,
    Map<String, String>? headers,
  }) async {
    final url = _withQueue(
      '${region.regionToUrl}/${Qtype.tft.name}/league/v1/challenger',
      queue,
    );
    LeagueListDTO league = await ApiUtil.requestApi(
      url,
      LeagueListDTO.fromJson,
      headers,
    );
    return league;
  }

  /// Get league entries by PUUID.
  static Future<List<LeagueEntryDTO>> getLeagueEntriesByPuuid(
    RegionValues region,
    String puuid, {
    Map<String, String>? headers,
  }) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/by-puuid/${Uri.encodeComponent(puuid)}';
    final leagueEntries =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
          url,
          (json) => json
              .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
          headers,
        );
    return leagueEntries;
  }

  /// Get all the league entries.
  static Future<List<LeagueEntryDTO>> getAllLeagueEntries(
    RegionValues region, {
    required Tier tier,
    required Division division,
    TFTLeagueQueue? queue,
    int? page,
    Map<String, String>? headers,
  }) async {
    final url =
        Uri.parse(
              '${region.regionToUrl}/${Qtype.tft.name}/league/v1/entries/${tier.name.toUpperCase()}/${division.valueToString}',
            )
            .replace(
              queryParameters: {
                if (queue != null) 'queue': queue.value,
                if (page != null) 'page': '$page',
              },
            )
            .toString();
    final leagueEntries =
        await ApiUtil.requestApi<List<LeagueEntryDTO>, List<dynamic>>(
          url,
          (json) => json
              .map((e) => LeagueEntryDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
          headers,
        );
    return leagueEntries;
  }

  /// Get the grandmaster league
  static Future<LeagueListDTO> getGrandmasterLeague(
    RegionValues region, {
    TFTLeagueQueue? queue,
    Map<String, String>? headers,
  }) async {
    final url = _withQueue(
      '${region.regionToUrl}/${Qtype.tft.name}/league/v1/grandmaster',
      queue,
    );
    LeagueListDTO league = await ApiUtil.requestApi(
      url,
      LeagueListDTO.fromJson,
      headers,
    );
    return league;
  }

  /// Get the master league
  static Future<LeagueListDTO> getMasterLeague(
    RegionValues region, {
    TFTLeagueQueue? queue,
    Map<String, String>? headers,
  }) async {
    final url = _withQueue(
      '${region.regionToUrl}/${Qtype.tft.name}/league/v1/master',
      queue,
    );
    LeagueListDTO league = await ApiUtil.requestApi(
      url,
      LeagueListDTO.fromJson,
      headers,
    );
    return league;
  }

  /// Get the top rated ladder for given queue
  static Future<List<TopRatedLadderEntryDTO>> getTopRatedLadderByQueue(
    RegionValues region,
    String queue, {
    Map<String, String>? headers,
  }) async {
    if (queue != 'RANKED_TFT_TURBO') {
      throw ArgumentError.value(queue, 'queue', 'must be RANKED_TFT_TURBO');
    }
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/league/v1/rated-ladders/$queue/top';
    final entry =
        await ApiUtil.requestApi<List<TopRatedLadderEntryDTO>, List<dynamic>>(
          url,
          (json) => json
              .map(
                (e) =>
                    TopRatedLadderEntryDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
          headers,
        );
    return entry;
  }
}

String _withQueue(String url, TFTLeagueQueue? queue) => queue == null
    ? url
    : Uri.parse(
        url,
      ).replace(queryParameters: {'queue': queue.value}).toString();
