// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) => InfoDTO(
  gameCreation: (json['gameCreation'] as num).toInt(),
  gameDuration: (json['gameDuration'] as num).toInt(),
  gameEndTimestamp: (json['gameEndTimestamp'] as num).toInt(),
  gameId: (json['gameId'] as num).toInt(),
  gameMode: json['gameMode'] as String,
  gameName: json['gameName'] as String,
  gameStartTimestamp: (json['gameStartTimestamp'] as num).toInt(),
  gameType: json['gameType'] as String?,
  gameVersion: json['gameVersion'] as String?,
  mapId: (json['mapId'] as num).toInt(),
  participants: (json['participants'] as List<dynamic>)
      .map((e) => ParticipantDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  platformId: json['platformId'] as String?,
  queueId: (json['queueId'] as num).toInt(),
  teams: (json['teams'] as List<dynamic>)
      .map((e) => MatchTeamDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  tournamentCode: json['tournamentCode'] as String?,
);
