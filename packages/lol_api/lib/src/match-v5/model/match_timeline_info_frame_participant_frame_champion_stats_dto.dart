import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_frame_participant_frame_champion_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoFrameParticipantFrameChampionStatsDTO {
  const MatchTimelineInfoFrameParticipantFrameChampionStatsDTO({
    this.abilityHaste,
    required this.abilityPower,
    required this.armor,
    required this.armorPen,
    required this.armorPenPercent,
    required this.attackDamage,
    required this.attackSpeed,
    required this.bonusArmorPenPercent,
    required this.bonusMagicPenPercent,
    required this.ccReduction,
    required this.cooldownReduction,
    required this.health,
    required this.healthMax,
    required this.healthRegen,
    required this.lifesteal,
    required this.magicPen,
    required this.magicPenPercent,
    required this.magicResist,
    required this.movementSpeed,
    required this.omnivamp,
    required this.physicalVamp,
    required this.power,
    required this.powerMax,
    required this.powerRegen,
    required this.spellVamp,
  });
  final int? abilityHaste;
  final int abilityPower;
  final int armor;
  final int armorPen;
  final int armorPenPercent;
  final int attackDamage;
  final int attackSpeed;
  final int bonusArmorPenPercent;
  final int bonusMagicPenPercent;
  final int ccReduction;
  final int cooldownReduction;
  final int health;
  final int healthMax;
  final int healthRegen;
  final int lifesteal;
  final int magicPen;
  final int magicPenPercent;
  final int magicResist;
  final int movementSpeed;
  final int omnivamp;
  final int physicalVamp;
  final int power;
  final int powerMax;
  final int powerRegen;
  final int spellVamp;
  factory MatchTimelineInfoFrameParticipantFrameChampionStatsDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MatchTimelineInfoFrameParticipantFrameChampionStatsDTOFromJson(json);
}
