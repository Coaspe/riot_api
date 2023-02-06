import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_frame_participant_frame_damage_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoFrameParticipantFrameDamageStatsDTO {
  const MatchTimelineInfoFrameParticipantFrameDamageStatsDTO({
    required this.magicDamageDone,
    required this.magicDamageDoneToChampions,
    required this.magicDamageTaken,
    required this.physicalDamageDone,
    required this.physicalDamageDoneToChampions,
    required this.physicalDamageTaken,
    required this.totalDamageDone,
    required this.totalDamageDoneToChampions,
    required this.totalDamageTaken,
    required this.trueDamageDone,
    required this.trueDamageDoneToChampions,
    required this.trueDamageTaken,
  });
  final int magicDamageDone;
  final int magicDamageDoneToChampions;
  final int magicDamageTaken;
  final int physicalDamageDone;
  final int physicalDamageDoneToChampions;
  final int physicalDamageTaken;
  final int totalDamageDone;
  final int totalDamageDoneToChampions;
  final int totalDamageTaken;
  final int trueDamageDone;
  final int trueDamageDoneToChampions;
  final int trueDamageTaken;
  factory MatchTimelineInfoFrameParticipantFrameDamageStatsDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MatchTimelineInfoFrameParticipantFrameDamageStatsDTOFromJson(json);
}
