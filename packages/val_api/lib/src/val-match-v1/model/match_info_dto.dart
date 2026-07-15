import 'package:json_annotation/json_annotation.dart';
part 'match_info_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchInfoDTO {
  const MatchInfoDTO({
    required this.matchId,
    required this.mapId,
    this.gameVersion,
    required this.gameLengthMillis,
    this.region,
    required this.gameStartMillis,
    required this.provisioningFlowId,
    required this.isCompleted,
    required this.customGameName,
    required this.queueId,
    required this.gameMode,
    required this.isRanked,
    required this.seasonId,
    this.premierMatchInfo = const [],
  });
  final String matchId;
  final String mapId;
  final String? gameVersion;
  final int gameLengthMillis;
  final String? region;
  final int gameStartMillis;
  final String provisioningFlowId;
  final bool isCompleted;
  final String customGameName;
  final String queueId;
  final String gameMode;
  final bool isRanked;
  final String seasonId;
  final List<Map<String, dynamic>> premierMatchInfo;
  factory MatchInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoDTOFromJson(json);
}
