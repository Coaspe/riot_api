import 'match_timeline_info_frame_participant_frame_dto.dart';

class MatchTimelineInfoFrameParticipantFramesDTO {
  const MatchTimelineInfoFrameParticipantFramesDTO({
    this.p1,
    this.p2,
    this.p3,
    this.p4,
    this.p5,
    this.p6,
    this.p7,
    this.p8,
    this.p9,
    this.p10,
    this.additionalParticipants = const {},
  });

  final MatchTimelineInfoFrameParticipantFrameDTO? p1;
  final MatchTimelineInfoFrameParticipantFrameDTO? p2;
  final MatchTimelineInfoFrameParticipantFrameDTO? p3;
  final MatchTimelineInfoFrameParticipantFrameDTO? p4;
  final MatchTimelineInfoFrameParticipantFrameDTO? p5;
  final MatchTimelineInfoFrameParticipantFrameDTO? p6;
  final MatchTimelineInfoFrameParticipantFrameDTO? p7;
  final MatchTimelineInfoFrameParticipantFrameDTO? p8;
  final MatchTimelineInfoFrameParticipantFrameDTO? p9;
  final MatchTimelineInfoFrameParticipantFrameDTO? p10;
  final Map<int, MatchTimelineInfoFrameParticipantFrameDTO>
  additionalParticipants;

  factory MatchTimelineInfoFrameParticipantFramesDTO.fromJson(
    Map<String, dynamic> json,
  ) {
    final frames = json.map(
      (key, value) => MapEntry(
        int.parse(key),
        MatchTimelineInfoFrameParticipantFrameDTO.fromJson(
          value as Map<String, dynamic>,
        ),
      ),
    );
    return MatchTimelineInfoFrameParticipantFramesDTO(
      p1: frames[1],
      p2: frames[2],
      p3: frames[3],
      p4: frames[4],
      p5: frames[5],
      p6: frames[6],
      p7: frames[7],
      p8: frames[8],
      p9: frames[9],
      p10: frames[10],
      additionalParticipants: Map.fromEntries(
        frames.entries.where((entry) => entry.key > 10),
      ),
    );
  }
}
