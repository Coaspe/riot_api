// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_participant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoParticipantDTO _$MatchTimelineInfoParticipantDTOFromJson(
        Map<String, dynamic> json) =>
    MatchTimelineInfoParticipantDTO(
      participantId: json['participantId'] as int,
      puuid: json['puuid'] as String,
    );

Map<String, dynamic> _$MatchTimelineInfoParticipantDTOToJson(
        MatchTimelineInfoParticipantDTO instance) =>
    <String, dynamic>{
      'participantId': instance.participantId,
      'puuid': instance.puuid,
    };
