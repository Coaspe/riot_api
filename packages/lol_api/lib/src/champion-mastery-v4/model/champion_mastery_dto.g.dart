// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_mastery_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionMasteryDTO _$ChampionMasteryDTOFromJson(Map<String, dynamic> json) =>
    ChampionMasteryDTO(
      championPointsUntilNextLevel: json['championPointsUntilNextLevel'] as int,
      chestGranted: json['chestGranted'] as bool,
      championId: json['championId'] as int,
      lastPlayTime: json['lastPlayTime'] as int,
      championLevel: json['championLevel'] as int,
      summonerId: json['summonerId'] as String,
      championPoints: json['championPoints'] as int,
      championPointsSinceLastLevel: json['championPointsSinceLastLevel'] as int,
      tokensEarned: json['tokensEarned'] as int,
    );

Map<String, dynamic> _$ChampionMasteryDTOToJson(ChampionMasteryDTO instance) =>
    <String, dynamic>{
      'championPointsUntilNextLevel': instance.championPointsUntilNextLevel,
      'chestGranted': instance.chestGranted,
      'championId': instance.championId,
      'lastPlayTime': instance.lastPlayTime,
      'championLevel': instance.championLevel,
      'summonerId': instance.summonerId,
      'championPoints': instance.championPoints,
      'championPointsSinceLastLevel': instance.championPointsSinceLastLevel,
      'tokensEarned': instance.tokensEarned,
    };
