// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionInfo _$ChampionInfoFromJson(Map<String, dynamic> json) => ChampionInfo(
  maxNewPlayerLevel: (json['maxNewPlayerLevel'] as num).toInt(),
  freeChampionIdsForNewPlayers:
      (json['freeChampionIdsForNewPlayers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  freeChampionIds: (json['freeChampionIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);
