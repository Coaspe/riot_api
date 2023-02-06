import 'match_position_dto.dart';
import 'match_timeline_info_frame_participant_frame_champion_stats_dto.dart';
import 'match_timeline_info_frame_participant_frame_damage_stats_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_frame_participant_frame_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoFrameParticipantFrameDTO {
  const MatchTimelineInfoFrameParticipantFrameDTO(
      {required this.championStats,
      required this.currentGold,
      required this.damageStats,
      required this.goldPerSecond,
      required this.jungleMinionsKilled,
      required this.level,
      required this.minionKilled,
      required this.participantId,
      required this.position,
      required this.timeEnemySpentControlled,
      required this.totalGold,
      required this.xp});
  final MatchTimelineInfoFrameParticipantFrameChampionStatsDTO championStats;
  final int currentGold;
  final MatchTimelineInfoFrameParticipantFrameDamageStatsDTO damageStats;
  final int goldPerSecond;
  final int jungleMinionsKilled;
  final int level;
  final int minionKilled;
  final int participantId;
  final MatchPositionDTO position;
  final int timeEnemySpentControlled;
  final int totalGold;
  final int xp;
  factory MatchTimelineInfoFrameParticipantFrameDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MatchTimelineInfoFrameParticipantFrameDTOFromJson(json);
}
