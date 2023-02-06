import 'package:json_annotation/json_annotation.dart';

part 'match_timeline_info_participant_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoParticipantDTO {
  const MatchTimelineInfoParticipantDTO(
      {required this.participantId, required this.puuid});
  final int participantId;
  final String puuid;
  factory MatchTimelineInfoParticipantDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchTimelineInfoParticipantDTOFromJson(json);
}
