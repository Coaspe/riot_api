import 'package:json_annotation/json_annotation.dart';
part 'match_info_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchInfoDTO {
  const MatchInfoDTO({
    required this.matchId,
    required this.mapId,
    required this.gameLengthMillis,
    required this.gameStartMillis,
    required this.provisioningFlowId,
    required this.isCompleted,
    required this.customGameName,
    required this.queueId,
    required this.gameMode,
    required this.isRanked,
    required this.seasonId,
  });
  final String matchId;
  final String mapId;
  final int gameLengthMillis;
  final int gameStartMillis;
  final String provisioningFlowId;
  final bool isCompleted;
  final String customGameName;
  final String queueId;
  final String gameMode;
  final bool isRanked;
  final String seasonId;
  factory MatchInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoDTOFromJson(json);
}
