import 'package:val_api/src/val-match-v1/model/ability_dto.dart';
import 'package:val_api/src/val-match-v1/model/damage_dto.dart';
import 'package:val_api/src/val-match-v1/model/economy_dto.dart';
import 'package:val_api/src/val-match-v1/model/kill_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'player_round_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class PlayerRoundStatsDTO {
  const PlayerRoundStatsDTO(
      {required this.puuid,
      required this.kills,
      required this.damage,
      required this.score,
      required this.economy,
      required this.ability});
  final String puuid;
  final List<KillDTO> kills;
  final List<DamageDTO> damage;
  final int score;
  final EconomyDTO economy;
  final AbilityDTO ability;
  factory PlayerRoundStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayerRoundStatsDTOFromJson(json);
}
