import 'package:lol_api/src/league-exp-v4/model/mini_series_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_item_dto.g.dart';

@JsonSerializable(createToJson: false)
class LeagueItemDTO {
  const LeagueItemDTO(
      {required this.freshBlood,
      required this.wins,
      required this.summonerName,
      this.miniSeries,
      required this.inactive,
      required this.veteran,
      required this.hotStreak,
      required this.rank,
      required this.leaguePoints,
      required this.losses,
      required this.summonerId});
  final bool freshBlood;
  final int wins;
  final String summonerName;
  final MiniSeriesDTO? miniSeries;
  final bool inactive;
  final bool veteran;
  final bool hotStreak;
  final String rank;
  final int leaguePoints;
  final int losses;
  final String summonerId;
  factory LeagueItemDTO.fromJson(Map<String, dynamic> json) =>
      _$LeagueItemDTOFromJson(json);
}
