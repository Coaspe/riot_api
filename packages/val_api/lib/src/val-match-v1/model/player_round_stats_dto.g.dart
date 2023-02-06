// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_round_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerRoundStatsDTO _$PlayerRoundStatsDTOFromJson(Map<String, dynamic> json) =>
    PlayerRoundStatsDTO(
      puuid: json['puuid'] as String,
      kills: (json['kills'] as List<dynamic>)
          .map((e) => KillDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      damage: (json['damage'] as List<dynamic>)
          .map((e) => DamageDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      score: json['score'] as int,
      economy: EconomyDTO.fromJson(json['economy'] as Map<String, dynamic>),
      ability: AbilityDTO.fromJson(json['ability'] as Map<String, dynamic>),
    );
