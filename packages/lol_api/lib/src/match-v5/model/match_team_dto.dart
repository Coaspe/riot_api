import 'ban_dto.dart';
import 'objectives_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_team_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchTeamDTO {
  const MatchTeamDTO(
      {required this.bans,
      required this.objectives,
      required this.teamId,
      required this.win});
  final List<BanDTO> bans;
  final ObjectivesDTO objectives;
  final int teamId;
  final bool win;
  factory MatchTeamDTO.fromJson(Map<String, dynamic> json) =>
      _$MatchTeamDTOFromJson(json);
}
