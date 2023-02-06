import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_frame_event_victim_damage_received_dto.g.dart';

/// type should be typed with enum but spec doesn't exists
@JsonSerializable(createToJson: false)
class MatchTimelineInfoFrameEventVictimDamageReceivedDTO {
  const MatchTimelineInfoFrameEventVictimDamageReceivedDTO(
      {required this.basic,
      required this.magicDamage,
      required this.name,
      required this.participantId,
      required this.physicalDamage,
      required this.sepllName,
      required this.spellSlot,
      required this.trueDamage,
      required this.type});
  final bool basic;
  final int magicDamage;
  final String name;
  final int participantId;
  final int physicalDamage;
  final String sepllName;
  final int spellSlot;
  final int trueDamage;
  final String type;
  factory MatchTimelineInfoFrameEventVictimDamageReceivedDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MatchTimelineInfoFrameEventVictimDamageReceivedDTOFromJson(json);
}
