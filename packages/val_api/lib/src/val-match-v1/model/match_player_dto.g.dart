// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchPlayerDTO _$MatchPlayerDTOFromJson(Map<String, dynamic> json) =>
    MatchPlayerDTO(
      puuid: json['puuid'] as String,
      gameName: json['gameName'] as String,
      tagLine: json['tagLine'] as String,
      teamId: json['teamId'] as String,
      partyId: json['partyId'] as String,
      characterId: json['characterId'] as String,
      stats: PlayerStatsDTO.fromJson(json['stats'] as Map<String, dynamic>),
      competitiveTier: json['competitiveTier'] as int,
      playerCard: json['playerCard'] as String,
      playerTitle: json['playerTitle'] as String,
    );
