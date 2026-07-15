// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_timeline_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchTimelineInfoDTO _$MatchTimelineInfoDTOFromJson(
  Map<String, dynamic> json,
) => MatchTimelineInfoDTO(
  endOfGameResult: json['endOfGameResult'] as String?,
  frameInterval: (json['frameInterval'] as num).toInt(),
  frames: (json['frames'] as List<dynamic>)
      .map((e) => MatchFrameDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  gameId: (json['gameId'] as num).toInt(),
  participants: (json['participants'] as List<dynamic>)
      .map(
        (e) =>
            MatchTimelineInfoParticipantDTO.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);
