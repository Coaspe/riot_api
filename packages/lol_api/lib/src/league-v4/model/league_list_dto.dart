import 'package:lol_api/src/league-exp-v4/model/league_entry_dto.dart';
import 'league_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class LeagueListDTO {
  const LeagueListDTO(
      {required this.leagueId,
      required this.entries,
      required this.tier,
      required this.name,
      required this.queue});
  final String leagueId;
  final List<LeagueItemDTO> entries;
  final Tier tier;
  final String name;
  final QueueType queue;
  factory LeagueListDTO.fromJson(Map<String, dynamic> json) =>
      _$LeagueListDTOFromJson(json);
}
