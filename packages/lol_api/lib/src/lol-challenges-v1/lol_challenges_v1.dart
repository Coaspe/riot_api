import 'package:json_annotation/json_annotation.dart';
import 'package:riot_api/riot_api.dart';
import 'model/level_to_percentile.dart';
import 'model/player_info_dto.dart';
import 'model/apex_player_info_dto.dart';
import 'model/challenge_config_info_dto.dart';
import 'model/serializable_map_of_percentile.dart';

enum Level {
  @JsonValue("NONE")
  none,
  @JsonValue("IRON")
  iron,
  @JsonValue("BRONZE")
  bronze,
  @JsonValue("SILVER")
  silver,
  @JsonValue("GOLD")
  gold,
  @JsonValue("PLATINUM")
  platinum,
  @JsonValue("DIAMOND")
  diamond,
  @JsonValue("MASTER")
  master,
  @JsonValue("GRANDMASTER")
  grandmaster,
  @JsonValue("CHALLENGER")
  challenger,
  @JsonValue("HIGHEST_NOT_LEADERBOARD_ONLY")
  highestNotLeaderboardOnly,
  @JsonValue("HIGHEST")
  highest,
  @JsonValue("LOWEST")
  lowest,
}

extension LevelEx on Level {
  String get valueToString {
    switch (this) {
      case Level.highestNotLeaderboardOnly:
        return "HIGHEST_NOT_LEADERBOARD_ONLY";
      default:
        return name.toUpperCase();
    }
  }
}

class LOLChallengesV1 {
  /// List of all basic challenge configuration information (includes all translations for names and descriptions
  static Future<List<ChallengeConfigInfoDTO>> getAllChallengeConfig(
      RegionValues region,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/challenges/config';
    final config =
        await ApiUtil.requestApi<List<ChallengeConfigInfoDTO>, List<dynamic>>(
            url,
            (json) => json
                .map((e) =>
                    ChallengeConfigInfoDTO.fromJson(e as Map<String, dynamic>))
                .toList(),
            headers);
    return config;
  }

  /// Map of level to percentile of players who have achieved it
  static Future<SerializableMapOfPercentile> getMapOfLevelToPercentiles(
      RegionValues region,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/challenges/percentiles';
    SerializableMapOfPercentile mapOfPercentile = await ApiUtil.requestApi(
        url, SerializableMapOfPercentile.fromJson, headers);
    return mapOfPercentile;
  }

  /// Get challenge configuration (REST)
  static Future<ChallengeConfigInfoDTO> getSingleChallengeConfig(
      RegionValues region, int challengeId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/challenges/$challengeId/config';
    ChallengeConfigInfoDTO challenge =
        await ApiUtil.requestApi(url, ChallengeConfigInfoDTO.fromJson, headers);
    return challenge;
  }

  /// Return top players for each level.
  ///
  /// Level must be MASTER, GRANDMASTER or CHALLENGER
  static Future<List<ApexPlayerInfoDTO>> getTopPlayersOfLevel(
      RegionValues region, int challengeId, Level level,
      {int? limit, Map<String, String>? headers}) async {
    assert(
        level == Level.challenger ||
            level == Level.grandmaster ||
            level == Level.master,
        "Level must be MASTER, GRANDMASTER or CHALLENGER");
    String url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/challenges/$challengeId/leaderboards/by-level/${level.valueToString}';
    if (limit != null) url += '?limit=$limit';
    final topPlayersEachLevel = await ApiUtil.requestApi<
            List<ApexPlayerInfoDTO>, List<dynamic>>(
        url,
        (json) => json
            .map((e) => ApexPlayerInfoDTO.fromJson(e as Map<String, dynamic>))
            .toList(),
        headers);
    return topPlayersEachLevel;
  }

  /// Get map of level to percentile of players who have achieved it
  static Future<LevelToPercentile> getMapOfLevelToPercentile(
      RegionValues region, int challengeId,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/challenges/$challengeId/percentiles';
    LevelToPercentile mapVal =
        await ApiUtil.requestApi(url, LevelToPercentile.fromJson, headers);
    return mapVal;
  }

  /// Returns player information with list of all progressed challenges (REST)
  static Future<PlayerInfoDTO> getPlayerInfoWithChallenge(
      RegionValues region, String puuid,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/challenges/v1/player-data/$puuid';
    PlayerInfoDTO mapVal =
        await ApiUtil.requestApi(url, PlayerInfoDTO.fromJson, headers);
    return mapVal;
  }
}
