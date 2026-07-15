// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_frame_event_victim_damage_received_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoFrameEventVictimDamageReceivedDTO
_$MatchTimelineInfoFrameEventVictimDamageReceivedDTOFromJson(
  Map<String, dynamic> json,
) => MatchTimelineInfoFrameEventVictimDamageReceivedDTO(
  basic: json['basic'] as bool,
  magicDamage: (json['magicDamage'] as num).toInt(),
  name: json['name'] as String,
  participantId: (json['participantId'] as num).toInt(),
  physicalDamage: (json['physicalDamage'] as num).toInt(),
  sepllName: json['sepllName'] as String,
  spellSlot: (json['spellSlot'] as num).toInt(),
  trueDamage: (json['trueDamage'] as num).toInt(),
  type: json['type'] as String,
);
