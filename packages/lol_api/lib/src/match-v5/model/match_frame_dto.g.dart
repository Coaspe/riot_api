// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_frame_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchFrameDTO _$MatchFrameDTOFromJson(Map<String, dynamic> json) =>
    MatchFrameDTO(
      events: (json['events'] as List<dynamic>)
          .map((e) => MatchEventDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: json['timestamp'] as int,
      participantFrames: MatchTimelineInfoFrameParticipantFramesDTO.fromJson(
          json['participantFrames'] as Map<String, dynamic>),
    );
