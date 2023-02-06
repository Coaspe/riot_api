import 'package:val_api/src/val-match-v1/model/ability_casts_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'player_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class PlayerStatsDTO {
  const PlayerStatsDTO({
    required this.score,
    required this.roundsPlayed,
    required this.kills,
    required this.deaths,
    required this.assists,
    required this.playtimeMillis,
    required this.abilityCasts,
  });
  final int score;
  final int roundsPlayed;
  final int kills;
  final int deaths;
  final int assists;
  final int playtimeMillis;
  final AbilityCastsDTO abilityCasts;
  factory PlayerStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsDTOFromJson(json);
}
