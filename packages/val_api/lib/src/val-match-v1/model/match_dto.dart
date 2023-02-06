import 'coach_dto.dart';
import 'match_info_dto.dart';
import 'match_player_dto.dart';
import 'round_result_dto.dart';

import 'package:json_annotation/json_annotation.dart';

import 'team_dto.dart';
part 'match_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchDTO {
  const MatchDTO(
      {required this.matchInfo,
      required this.players,
      required this.coaches,
      required this.teams,
      required this.roundResults});
  final MatchInfoDTO matchInfo;
  final List<MatchPlayerDTO> players;
  final List<CoachDTO> coaches;
  final List<TeamDTO> teams;
  final List<RoundResultDTO> roundResults;
  factory MatchDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchDTOFromJson(json);
}
