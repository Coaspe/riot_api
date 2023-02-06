import 'package:json_annotation/json_annotation.dart';
part 'team_dto.g.dart';

@JsonSerializable(createToJson: false)
class TeamDTO {
  const TeamDTO({
    required this.teamId,
    required this.won,
    required this.roundsPlayed,
    required this.roundsWon,
    required this.numPoints,
  });

  /// The puuid of the player in deathmatch.
  ///
  /// This is an arbitrary string. Red and Blue in bomb modes.
  final String teamId;
  final bool won;
  final int roundsPlayed;
  final int roundsWon;

  /// Team points scored. Number of kills in deathmatch.
  final int numPoints;
  factory TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamDTOFromJson(json);
}
