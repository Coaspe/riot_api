// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionInfo _$ChampionInfoFromJson(Map<String, dynamic> json) => ChampionInfo(
      maxNewPlayerLevel: json['maxNewPlayerLevel'] as int,
      freeChampionIdsForNewPlayers:
          (json['freeChampionIdsForNewPlayers'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
      freeChampionIds: (json['freeChampionIds'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );
