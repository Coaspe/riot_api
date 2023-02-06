import 'match_frame_dto.dart';
import 'match_timeline_info_participant_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoDTO {
  const MatchTimelineInfoDTO(
      {required this.frameInterval,
      required this.frames,
      required this.gameId,
      required this.participants});
  final int frameInterval;
  final List<MatchFrameDTO> frames;
  final int gameId;
  final List<MatchTimelineInfoParticipantDTO> participants;
  factory MatchTimelineInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchTimelineInfoDTOFromJson(json);
}
