import 'package:json_annotation/json_annotation.dart';
import 'player_dto.dart';

part 'team_dto.g.dart';

@JsonSerializable(createToJson: false)
class TeamDTO {
  const TeamDTO(
      {required this.id,
      required this.tournamentId,
      required this.name,
      required this.iconId,
      required this.tier,
      this.caption,
      this.abbreviation,
      required this.players});

  final String id;
  final String tournamentId;
  final String name;
  final int iconId;
  final int tier;
  final String? caption;
  final String? abbreviation;
  final List<PlayerDTO> players;
  factory TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamDTOFromJson(json);
}
