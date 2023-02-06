import 'package:json_annotation/json_annotation.dart';
import 'match_timeline_info_frame_participant_frames_dto.dart';
import 'match_event_dto.dart';

part 'match_frame_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchFrameDTO {
  const MatchFrameDTO(
      {required this.events,
      required this.timestamp,
      required this.participantFrames});
  final List<MatchEventDTO> events;
  final int timestamp;
  final MatchTimelineInfoFrameParticipantFramesDTO participantFrames;
  factory MatchFrameDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchFrameDTOFromJson(json);
}
