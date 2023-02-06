import 'package:val_api/src/val-match-v1/model/player_stats_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'match_player_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchPlayerDTO {
  const MatchPlayerDTO(
      {required this.puuid,
      required this.gameName,
      required this.tagLine,
      required this.teamId,
      required this.partyId,
      required this.characterId,
      required this.stats,
      required this.competitiveTier,
      required this.playerCard,
      required this.playerTitle});
  final String puuid;
  final String gameName;
  final String tagLine;
  final String teamId;
  final String partyId;
  final String characterId;
  final PlayerStatsDTO stats;
  final int competitiveTier;
  final String playerCard;
  final String playerTitle;
  factory MatchPlayerDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchPlayerDTOFromJson(json);
}
