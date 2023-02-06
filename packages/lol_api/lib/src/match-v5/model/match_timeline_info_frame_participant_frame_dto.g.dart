// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_frame_participant_frame_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoFrameParticipantFrameDTO
    _$MatchTimelineInfoFrameParticipantFrameDTOFromJson(
            Map<String, dynamic> json) =>
        MatchTimelineInfoFrameParticipantFrameDTO(
          championStats:
              MatchTimelineInfoFrameParticipantFrameChampionStatsDTO.fromJson(
                  json['championStats'] as Map<String, dynamic>),
          currentGold: json['currentGold'] as int,
          damageStats:
              MatchTimelineInfoFrameParticipantFrameDamageStatsDTO.fromJson(
                  json['damageStats'] as Map<String, dynamic>),
          goldPerSecond: json['goldPerSecond'] as int,
          jungleMinionsKilled: json['jungleMinionsKilled'] as int,
          level: json['level'] as int,
          minionKilled: json['minionKilled'] as int,
          participantId: json['participantId'] as int,
          position: MatchPositionDTO.fromJson(
              json['position'] as Map<String, dynamic>),
          timeEnemySpentControlled: json['timeEnemySpentControlled'] as int,
          totalGold: json['totalGold'] as int,
          xp: json['xp'] as int,
        );
