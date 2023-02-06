import 'package:json_annotation/json_annotation.dart';
import 'match_timeline_info_frame_participant_frame_dto.dart';

part 'match_timeline_info_frame_participant_frames_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTimelineInfoFrameParticipantFramesDTO {
  const MatchTimelineInfoFrameParticipantFramesDTO({
    required this.p1,
    required this.p2,
    required this.p3,
    required this.p4,
    required this.p5,
    required this.p6,
    required this.p7,
    required this.p8,
    required this.p9,
    required this.p10,
  });

  @JsonKey(name: "1")
  final MatchTimelineInfoFrameParticipantFrameDTO p1;
  @JsonKey(name: "2")
  final MatchTimelineInfoFrameParticipantFrameDTO p2;
  @JsonKey(name: "3")
  final MatchTimelineInfoFrameParticipantFrameDTO p3;
  @JsonKey(name: "4")
  final MatchTimelineInfoFrameParticipantFrameDTO p4;
  @JsonKey(name: "5")
  final MatchTimelineInfoFrameParticipantFrameDTO p5;
  @JsonKey(name: "6")
  final MatchTimelineInfoFrameParticipantFrameDTO p6;
  @JsonKey(name: "7")
  final MatchTimelineInfoFrameParticipantFrameDTO p7;
  @JsonKey(name: "8")
  final MatchTimelineInfoFrameParticipantFrameDTO p8;
  @JsonKey(name: "9")
  final MatchTimelineInfoFrameParticipantFrameDTO p9;
  @JsonKey(name: "10")
  final MatchTimelineInfoFrameParticipantFrameDTO p10;
  factory MatchTimelineInfoFrameParticipantFramesDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MatchTimelineInfoFrameParticipantFramesDTOFromJson(json);
}
