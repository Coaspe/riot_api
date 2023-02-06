// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_game_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedGameInfo _$FeaturedGameInfoFromJson(Map<String, dynamic> json) =>
    FeaturedGameInfo(
      gameMode: json['gameMode'] as String?,
      gameLength: json['gameLength'] as int?,
      mapId: json['mapId'] as int?,
      gameType: json['gameType'] as String?,
      bannedChampion: (json['bannedChampion'] as List<dynamic>?)
          ?.map((e) => BannedChampion.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameId: json['gameId'] as int?,
      observer: json['observer'] == null
          ? null
          : Observer.fromJson(json['observer'] as Map<String, dynamic>),
      gameQueueConfigId: json['gameQueueConfigId'] as int?,
      gameStartTime: json['gameStartTime'] as int?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturedGameInfoToJson(FeaturedGameInfo instance) =>
    <String, dynamic>{
      'gameMode': instance.gameMode,
      'gameLength': instance.gameLength,
      'mapId': instance.mapId,
      'gameType': instance.gameType,
      'bannedChampion': instance.bannedChampion,
      'gameId': instance.gameId,
      'observer': instance.observer,
      'gameQueueConfigId': instance.gameQueueConfigId,
      'gameStartTime': instance.gameStartTime,
      'participants': instance.participants,
    };
