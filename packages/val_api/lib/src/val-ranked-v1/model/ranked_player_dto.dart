import 'package:json_annotation/json_annotation.dart';
part 'ranked_player_dto.g.dart';

@JsonSerializable(createToJson: false)
class RankedPlayerDTO {
  const RankedPlayerDTO(
      {this.puuid,
      this.gameName,
      this.tagLine,
      required this.leaderboardRank,
      required this.rankedRating,
      required this.numberOfWins});
  final String? puuid;
  final String? gameName;
  final String? tagLine;
  final int leaderboardRank;
  final int rankedRating;
  final int numberOfWins;
  factory RankedPlayerDTO.fromJson(Map<String, dynamic> json) =>
      _$RankedPlayerDTOFromJson(json);
}
