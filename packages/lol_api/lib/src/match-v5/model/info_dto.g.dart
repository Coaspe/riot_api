// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) => InfoDTO(
      gameCreation: json['gameCreation'] as int,
      gameDuration: json['gameDuration'] as int,
      gameEndTimestamp: json['gameEndTimestamp'] as int,
      gameId: json['gameId'] as int,
      gameMode: json['gameMode'] as String,
      gameName: json['gameName'] as String,
      gameStartTimestamp: json['gameStartTimestamp'] as int,
      gameType: json['gameType'] as String?,
      gameVersion: json['gameVersion'] as String?,
      mapId: json['mapId'] as int,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ParticipantDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      platformId: json['platformId'] as String?,
      queueId: json['queueId'] as int,
      teams: (json['teams'] as List<dynamic>)
          .map((e) => MatchTeamDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      tournamentCode: json['tournamentCode'] as String?,
    );

Map<String, dynamic> _$InfoDTOToJson(InfoDTO instance) => <String, dynamic>{
      'gameCreation': instance.gameCreation,
      'gameDuration': instance.gameDuration,
      'gameEndTimestamp': instance.gameEndTimestamp,
      'gameId': instance.gameId,
      'gameMode': instance.gameMode,
      'gameName': instance.gameName,
      'gameStartTimestamp': instance.gameStartTimestamp,
      'gameType': instance.gameType,
      'gameVersion': instance.gameVersion,
      'mapId': instance.mapId,
      'participants': instance.participants,
      'platformId': instance.platformId,
      'queueId': instance.queueId,
      'teams': instance.teams,
      'tournamentCode': instance.tournamentCode,
    };
