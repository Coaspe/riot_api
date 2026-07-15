// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerStatsDTO _$PlayerStatsDTOFromJson(Map<String, dynamic> json) =>
    PlayerStatsDTO(
      score: (json['score'] as num).toInt(),
      roundsPlayed: (json['roundsPlayed'] as num).toInt(),
      kills: (json['kills'] as num).toInt(),
      deaths: (json['deaths'] as num).toInt(),
      assists: (json['assists'] as num).toInt(),
      playtimeMillis: (json['playtimeMillis'] as num).toInt(),
      abilityCasts: AbilityCastsDTO.fromJson(
        json['abilityCasts'] as Map<String, dynamic>,
      ),
    );
