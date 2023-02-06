// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_frame_event_victim_damage_received_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoFrameEventVictimDamageReceivedDTO
    _$MatchTimelineInfoFrameEventVictimDamageReceivedDTOFromJson(
            Map<String, dynamic> json) =>
        MatchTimelineInfoFrameEventVictimDamageReceivedDTO(
          basic: json['basic'] as bool,
          magicDamage: json['magicDamage'] as int,
          name: json['name'] as String,
          participantId: json['participantId'] as int,
          physicalDamage: json['physicalDamage'] as int,
          sepllName: json['sepllName'] as String,
          spellSlot: json['spellSlot'] as int,
          trueDamage: json['trueDamage'] as int,
          type: json['type'] as String,
        );

Map<String, dynamic> _$MatchTimelineInfoFrameEventVictimDamageReceivedDTOToJson(
        MatchTimelineInfoFrameEventVictimDamageReceivedDTO instance) =>
    <String, dynamic>{
      'basic': instance.basic,
      'magicDamage': instance.magicDamage,
      'name': instance.name,
      'participantId': instance.participantId,
      'physicalDamage': instance.physicalDamage,
      'sepllName': instance.sepllName,
      'spellSlot': instance.spellSlot,
      'trueDamage': instance.trueDamage,
      'type': instance.type,
    };
