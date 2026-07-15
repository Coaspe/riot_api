// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchInfoDTO _$MatchInfoDTOFromJson(Map<String, dynamic> json) => MatchInfoDTO(
  matchId: json['matchId'] as String,
  mapId: json['mapId'] as String,
  gameVersion: json['gameVersion'] as String?,
  gameLengthMillis: (json['gameLengthMillis'] as num).toInt(),
  region: json['region'] as String?,
  gameStartMillis: (json['gameStartMillis'] as num).toInt(),
  provisioningFlowId: json['provisioningFlowId'] as String,
  isCompleted: json['isCompleted'] as bool,
  customGameName: json['customGameName'] as String,
  queueId: json['queueId'] as String,
  gameMode: json['gameMode'] as String,
  isRanked: json['isRanked'] as bool,
  seasonId: json['seasonId'] as String,
  premierMatchInfo:
      (json['premierMatchInfo'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
);
