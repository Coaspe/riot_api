import 'finishing_damage_dto.dart';
import 'location_dto.dart';
import 'player_location_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'kill_dto.g.dart';

@JsonSerializable(createToJson: false)
class KillDTO {
  KillDTO({
    required this.timeSinceGameStartMillis,
    required this.timeSinceRoundStartMillis,
    required this.killer,
    required this.victim,
    required this.victimLocation,
    required this.assistants,
    required this.playerLocations,
    required this.finishingDamage,
  });

  final int timeSinceGameStartMillis;
  final int timeSinceRoundStartMillis;
  final String killer;
  final String victim;
  final LocationDTO victimLocation;
  final List<String> assistants;
  final List<PlayerLocationDTO> playerLocations;
  final FinishingDamageDTO finishingDamage;
  factory KillDTO.fromJson(Map<String, dynamic> json) =>
      _$KillDTOFromJson(json);
}
