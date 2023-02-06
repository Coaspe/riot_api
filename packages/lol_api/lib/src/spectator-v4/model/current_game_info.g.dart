// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_game_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentGameInfo _$CurrentGameInfoFromJson(Map<String, dynamic> json) =>
    CurrentGameInfo(
      gameId: json['gameId'] as int,
      gameType: json['gameType'] as String,
      gameStartTime: json['gameStartTime'] as int,
      mapId: json['mapId'] as int,
      gameLength: json['gameLength'] as int,
      platformId: json['platformId'] as String,
      gameMode: json['gameMode'] as String,
      bannedChampions: (json['bannedChampions'] as List<dynamic>?)
              ?.map((e) => BannedChampion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gameQueueConfigId: json['gameQueueConfigId'] as int,
      observers: json['observers'] == null
          ? null
          : Observer.fromJson(json['observers'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>)
          .map(
              (e) => CurrentGameParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentGameInfoToJson(CurrentGameInfo instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gameType': instance.gameType,
      'gameStartTime': instance.gameStartTime,
      'mapId': instance.mapId,
      'gameLength': instance.gameLength,
      'platformId': instance.platformId,
      'gameMode': instance.gameMode,
      'bannedChampions': instance.bannedChampions,
      'gameQueueConfigId': instance.gameQueueConfigId,
      'observers': instance.observers,
      'participants': instance.participants,
    };
