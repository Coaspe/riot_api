import 'package:json_annotation/json_annotation.dart';
import 'mini_series_dto.dart';

part 'league_entry_dto.g.dart';

enum QueueType {
  @JsonValue("RANKED_SOLO_5x5")
  rankedSolo_5x5,
  @JsonValue("RANKED_TFT")
  rankedTFT,
  @JsonValue("RANKED_FLEX_SR")
  rankedFlexSR,
  @JsonValue("RANKED_FLEX_TT")
  rankedFlexTT
}

extension QueueTypeEx on QueueType {
  String get valueToString {
    switch (this) {
      case QueueType.rankedSolo_5x5:
        return "RANKED_SOLO_5x5";
      case QueueType.rankedTFT:
        return "RANKED_TFT";
      case QueueType.rankedFlexSR:
        return "RANKED_FLEX_SR";
      case QueueType.rankedFlexTT:
        return "RANKED_FLEX_TT";
      default:
        return "";
    }
  }
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

/// Rank of the user higher than the diamond tier should be set to I.
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
  const LeagueEntryDTO(
      {required this.leagueId,
      required this.summonerId,
      required this.summonerName,
      required this.queueType,
      required this.tier,
      required this.rank,
      required this.leaguePoints,
      required this.wins,
      required this.losses,
      required this.hotStreak,
      required this.veteran,
      required this.freshBlood,
      required this.inactive,
      this.miniSeries})
      : assert(
            (!((tier == Tier.challenger ||
                    tier == Tier.grandmaster ||
                    tier == Tier.master) &&
                rank != Division.one)),
            "Rank of the user higher than the diamond tier should be set to I.");

  final String leagueId;
  final String summonerId;
  final String summonerName;
  final QueueType queueType;
  final Tier tier;
  final Division rank;
  final int leaguePoints;
  final int wins;
  final int losses;
  final bool hotStreak;
  final bool veteran;
  final bool freshBlood;
  final bool inactive;
  final MiniSeriesDTO? miniSeries;

  factory LeagueEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$LeagueEntryDTOFromJson(json);
}
