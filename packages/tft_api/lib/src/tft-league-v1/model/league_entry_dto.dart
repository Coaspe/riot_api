import 'package:json_annotation/json_annotation.dart';

import 'mini_series_dto.dart';

part 'league_entry_dto.g.dart';

enum RatedTier {
  @JsonValue("ORANGE")
  oreange,
  @JsonValue("PURPLE")
  purple,
  @JsonValue("BLUE")
  blue,
  @JsonValue("GREEN")
  green,
  @JsonValue("GRAY")
  gray
}

enum Tier {
  @JsonValue("CHALLENGER")
  challenger,
  @JsonValue("GRANDMASTER")
  grandmaster,
  @JsonValue("MASTER")
  master,
  @JsonValue("DIAMOND")
  diamond,
  @JsonValue("PLATINUM")
  platinum,
  @JsonValue("GOLD")
  gold,
  @JsonValue("SILVER")
  silver,
  @JsonValue("BRONZE")
  bronze,
  @JsonValue("IRON")
  iron
}

enum Division {
  @JsonValue('I')
  one,
  @JsonValue("II")
  two,
  @JsonValue("III")
  three,
  @JsonValue("IV")
  four
}

extension DivisionEx on Division {
  String get valueToString {
    switch (this) {
      case Division.one:
        return "I";
      case Division.two:
        return "II";
      case Division.three:
        return "III";
      case Division.four:
        return "IV";
      default:
        return "";
    }
  }
}

@JsonSerializable(createToJson: false)
class LeagueEntryDTO {
  const LeagueEntryDTO({
    this.leagueId,
    required this.summonerId,
    required this.summonerName,
    required this.queueType,
    this.ratedTier,
    this.ratedRating,
    this.tier,
    this.rank,
    this.leaguePoints,
    required this.wins,
    required this.losses,
    this.hotStreak,
    this.veteran,
    this.freshBlood,
    this.inactive,
    this.miniSeries,
  });

  /// Not included for the RANKED_TFT_TURBO queueType.
  final String? leagueId;

  /// Player's encrypted summonerId.
  final String summonerId;
  final String summonerName;
  final String queueType;

  /// Only included for the RANKED_TFT_TURBO queueType.
  ///
  /// (Legal values: ORANGE, PURPLE, BLUE, GREEN, GRAY)
  final RatedTier? ratedTier;

  /// Only included for the RANKED_TFT_TURBO queueType.
  final int? ratedRating;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final String? tier;

  /// A player's division within a tier.
  ///
  /// Not included for the RANKED_TFT_TURBO queueType.
  final String? rank;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final int? leaguePoints;

  /// First placement.
  final int wins;

  /// Second through eighth placement.
  final int losses;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final bool? hotStreak;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final bool? veteran;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final bool? freshBlood;

  /// Not included for the RANKED_TFT_TURBO queueType.
  final bool? inactive;
  final MiniSeriesDTO? miniSeries;

  factory LeagueEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$LeagueEntryDTOFromJson(json);
}
