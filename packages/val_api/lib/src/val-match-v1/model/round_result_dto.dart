import 'location_dto.dart';
import 'player_location_dto.dart';
import 'player_round_stats_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'round_result_dto.g.dart';

@JsonSerializable(createToJson: false)
class RoundResultDTO {
  RoundResultDTO({
    required this.roundNum,
    required this.roundResult,
    required this.roundCeremony,
    required this.winningTeam,
    required this.bombPlanter,
    required this.bombDefuser,
    required this.plantRoundTime,
    required this.plantPlayerLocations,
    required this.plantLocation,
    required this.plantSite,
    required this.defuseRoundTime,
    required this.defusePlayerLocations,
    required this.defuseLocation,
    required this.playerStats,
    required this.roundResultCode,
  });

  final int roundNum;
  final String roundResult;
  final String roundCeremony;
  final String winningTeam;
  final String bombPlanter;
  final String bombDefuser;
  final int plantRoundTime;
  final List<PlayerLocationDTO> plantPlayerLocations;
  final LocationDTO plantLocation;
  final String plantSite;
  final int defuseRoundTime;
  final List<PlayerLocationDTO> defusePlayerLocations;
  final LocationDTO defuseLocation;
  final List<PlayerRoundStatsDTO> playerStats;
  final String roundResultCode;
  factory RoundResultDTO.fromJson(Map<String, dynamic> json) =>
      _$RoundResultDTOFromJson(json);
}
