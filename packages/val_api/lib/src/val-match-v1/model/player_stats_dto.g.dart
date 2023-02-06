// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerStatsDTO _$PlayerStatsDTOFromJson(Map<String, dynamic> json) =>
    PlayerStatsDTO(
      score: json['score'] as int,
      roundsPlayed: json['roundsPlayed'] as int,
      kills: json['kills'] as int,
      deaths: json['deaths'] as int,
      assists: json['assists'] as int,
      playtimeMillis: json['playtimeMillis'] as int,
      abilityCasts: AbilityCastsDTO.fromJson(
          json['abilityCasts'] as Map<String, dynamic>),
    );
