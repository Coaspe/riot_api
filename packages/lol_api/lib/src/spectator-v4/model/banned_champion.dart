import 'package:json_annotation/json_annotation.dart';

part 'banned_champion.g.dart';

@JsonSerializable(createToJson: false)
class BannedChampion {
  const BannedChampion(
      {required this.pickTurn, required this.championId, required this.teamId});

  ///	The turn during which the champion was banned
  final int pickTurn;

  ///	The ID of the banned champion
  final int championId;

  ///	The ID of the team that banned the champion
  final int teamId;

  factory BannedChampion.fromJson(Map<String, dynamic> json) =>
      _$BannedChampionFromJson(json);
}
