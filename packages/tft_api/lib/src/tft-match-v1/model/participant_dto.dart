import 'package:json_annotation/json_annotation.dart';
import 'companion_dto.dart';
import 'trait_dto.dart';
import 'unit_dto.dart';

part 'participant_dto.g.dart';

@JsonSerializable(createToJson: false)
class ParticipantDTO {
  const ParticipantDTO({
    required this.companion,
    required this.goldLeft,
    required this.lastRound,
    required this.level,
    required this.placement,
    required this.playersEliminated,
    required this.puuid,
    required this.timeEliminated,
    required this.totalDamageToPlayers,
    required this.traits,
    required this.units,
  });
  final CompanionDTO companion;

  /// Gold left after participant was eliminated.
  @JsonKey(name: "gold_left")
  final int goldLeft;

  /// The round the participant was eliminated in.
  ///
  /// Note: If the player was eliminated in stage 2-1 their last_round would be 5.
  @JsonKey(name: "last_round")
  final int lastRound;

  /// Participant Little Legend level.
  ///
  /// Note: This is not the number of active units.
  final int level;

  /// Participant placement upon elimination.
  final int placement;

  /// Number of players the participant eliminated.
  @JsonKey(name: "players_eliminated")
  final int playersEliminated;

  final String puuid;

  /// The number of seconds before the participant was eliminated.
  @JsonKey(name: "time_eliminated")
  final double timeEliminated;

  /// Damage the participant dealt to other players.
  @JsonKey(name: "total_damage_to_players")
  final int totalDamageToPlayers;

  /// A complete list of traits for the participant's active units.
  final List<TraitDTO> traits;

  /// A list of active units for the participant.
  final List<UnitDTO> units;

  factory ParticipantDTO.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDTOFromJson(json);
}
