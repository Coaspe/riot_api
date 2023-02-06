import 'package:json_annotation/json_annotation.dart';

part 'champion_info.g.dart';

@JsonSerializable(createToJson: false)
class ChampionInfo {
  const ChampionInfo({
    required this.maxNewPlayerLevel,
    required this.freeChampionIdsForNewPlayers,
    required this.freeChampionIds,
  });
  final int maxNewPlayerLevel;
  final List<int> freeChampionIdsForNewPlayers;
  final List<int> freeChampionIds;

  factory ChampionInfo.fromJson(Map<String, dynamic> json) =>
      _$ChampionInfoFromJson(json);
}
