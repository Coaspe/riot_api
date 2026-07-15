// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_frame_participant_frame_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoFrameParticipantFrameDTO
_$MatchTimelineInfoFrameParticipantFrameDTOFromJson(
  Map<String, dynamic> json,
) => MatchTimelineInfoFrameParticipantFrameDTO(
  championStats:
      MatchTimelineInfoFrameParticipantFrameChampionStatsDTO.fromJson(
        json['championStats'] as Map<String, dynamic>,
      ),
  currentGold: (json['currentGold'] as num).toInt(),
  damageStats: MatchTimelineInfoFrameParticipantFrameDamageStatsDTO.fromJson(
    json['damageStats'] as Map<String, dynamic>,
  ),
  goldPerSecond: (json['goldPerSecond'] as num).toInt(),
  jungleMinionsKilled: (json['jungleMinionsKilled'] as num).toInt(),
  level: (json['level'] as num).toInt(),
  minionKilled: (json['minionKilled'] as num).toInt(),
  participantId: (json['participantId'] as num).toInt(),
  position: MatchPositionDTO.fromJson(json['position'] as Map<String, dynamic>),
  timeEnemySpentControlled: (json['timeEnemySpentControlled'] as num).toInt(),
  totalGold: (json['totalGold'] as num).toInt(),
  xp: (json['xp'] as num).toInt(),
);
